import datetime
import json

from common.models.errors import (
    AuthCodeNotMatchError,
    BusinessError,
    ConstraintError,
    LoginError,
    MailAddressExistsError,
    MailAddressLockedError,
    MailAddressNotExistsError,
    MissingParameterError,
    UserExistsError,
    UserLockedError,
)
from common.models.responses import (
    APIErrorResponse,
    APISuccessResponse,
    UnkownErrorResponse,
)
from django.forms import ValidationError
from rest_framework.authentication import TokenAuthentication
from rest_framework.authtoken.models import Token
from rest_framework.permissions import IsAuthenticated
from rest_framework.views import APIView

from .models import AuthCode, User
from .serializers import SearchUserSerializer


# Create your views here.
class SendAuthCodeV1API(APIView):
    def post(self, request, *args, **kwargs):
        try:
            email = request.data["email"]

            auth_code = AuthCode.objects.find_or_null(pk=email)
            user = User.objects.find_by_email(email=email)

            if user is not None:  # メールアドレス登録済の場合
                raise MailAddressExistsError()

            if auth_code is None:  # 認証コードがない場合
                auth_code = AuthCode.objects.generate(email=email)
            else:  # 認証コード再送信の場合
                if auth_code.is_locked:
                    raise MailAddressLockedError()

            self._send_email(auth_code)
            return APISuccessResponse(
                body=SendAuthCodeV1API.Response(
                    email=auth_code.email,
                ),
            )
        except KeyError as e:
            return APIErrorResponse(MissingParameterError(e))
        except BusinessError as e:
            return APIErrorResponse(e)
        except ValidationError as e:
            return APIErrorResponse(ConstraintError(e))
        except Exception as e:
            return UnkownErrorResponse(e)

    def _send_email(self, auth_code: AuthCode):
        auth_code.email_send_count += 1
        auth_code.save()

    class Response:
        def __init__(self, email: str):
            self.email = email


class AuthenticateEmailV1API(APIView):
    def post(self, request, *args, **kwargs):
        try:
            email = request.data["email"]
            code = request.data["code"]

            auth_code = AuthCode.objects.find_or_null(pk=email)
            user = User.objects.find_by_email(email=email)

            if auth_code is None:  # 認証コードが存在していない
                raise MailAddressNotExistsError()
            if auth_code.is_locked:  # メールアドレスロック済
                raise MailAddressLockedError()
            if user is not None:  # 既に使用されている
                raise MailAddressExistsError()

            isMatch = self._verifyCode(auth_code, code)

            if isMatch:  # 認証OK
                self._initAuthCode(auth_code)
                return APISuccessResponse(
                    body=AuthenticateEmailV1API.Response(
                        email=auth_code.email,
                    ),
                )
            else:  # 認証NG
                raise AuthCodeNotMatchError()
        except KeyError as e:
            return APIErrorResponse(MissingParameterError(e))
        except BusinessError as e:
            return APIErrorResponse(e)
        except ValidationError as e:
            return APIErrorResponse(ConstraintError(e))
        except Exception as e:
            return UnkownErrorResponse(e)

    def _verifyCode(self, model: AuthCode, code: int):
        model.authentication_tries += 1
        model.save()
        return model.auth_code == code

    def _initAuthCode(self, model: AuthCode):
        model.authentication_tries = 0
        model.email_send_count = 0
        model.save()

    class Response:
        def __init__(self, email: str):
            self.email = email


class RegisterUserV1API(APIView):
    def post(self, request, *args, **kwargs):
        try:
            data = json.loads(request.data["user"])

            username = data["userName"]
            email = data["email"]
            bio = data["bio"]
            password = data["password"]
            image = request.FILES.get("image")

            user = User.objects.find_by_email(email=email)

            if user is not None:  # メールアドレスが存在する（会員が存在する）
                raise UserExistsError()

            user = User.objects.create_user(
                username=username,
                password=password,
                bio=bio,
                email=email,
                image=image,
            )

            return APISuccessResponse(body=RegisterUserV1API.Response(user=user))
        except KeyError as e:
            return APIErrorResponse(MissingParameterError(e))
        except BusinessError as e:
            return APIErrorResponse(e)
        except ValidationError as e:
            return APIErrorResponse(ConstraintError(e))
        except Exception as e:
            return UnkownErrorResponse(e)

    class Response:
        def __init__(self, user: User):
            self.user = user.get_public_props()


class LoginV1API(APIView):
    def post(self, request, *args, **kwargs):
        try:
            email = request.data["email"]
            password = request.data["password"]

            user = User.objects.find_by_email(email=email)
            if not user or not user.check_password(password):
                raise LoginError()

            if not user.is_active:
                raise UserLockedError()

            # トークンの生成
            token = Token.objects.get_or_create(user=user)[0]

            # ログイン情報の更新と保存
            self._updateLoginDateTime(user)

            # 返却
            return APISuccessResponse(
                body=LoginV1API.Response(token=token.key, user=user)
            )
        except KeyError as e:
            return APIErrorResponse(MissingParameterError(e))
        except BusinessError as e:
            return APIErrorResponse(e)
        except Exception as e:
            return UnkownErrorResponse(e)

    def _updateLoginDateTime(self, user: User):
        user.last_login_at = datetime.datetime.now()
        user.full_clean()
        user.save()

    class Response:
        def __init__(self, user: User, token: str):
            self.token = token
            self.user = user.get_public_props()


class SearchUserV1API(APIView):
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    PAGE_SIZE = 10

    def post(self, request, *args, **kwargs):
        try:
            serializer = SearchUserSerializer(data=request.data)

            if serializer.is_valid():
                # ユーザを検索する
                users = self.search(request=request)
                results = self.create_search_result(users=users)

                return APISuccessResponse(body=SearchUserV1API.Response(users=results))
            else:
                raise KeyError(serializer.errors)

        except KeyError as e:
            return APIErrorResponse(MissingParameterError(e))
        except BusinessError as e:
            return APIErrorResponse(e)
        except Exception as e:
            return UnkownErrorResponse(e)

    def search(self, request) -> list[User]:
        keyword = request.data["keyword"]
        page = int(request.data["page"])
        me = request.user

        start = page * self.PAGE_SIZE
        end = start + self.PAGE_SIZE

        return (
            User.objects.filter(username__icontains=keyword)
            .order_by("-last_login_at")
            .exclude(id=me.id)[start:end]
        )

    def create_search_result(self, users: list[User]) -> list[dict]:
        results = []
        for user in users:
            results.append(user.get_minimal_props())

        return results

    class Response:
        def __init__(self, users: list[User]):
            self.users = users
