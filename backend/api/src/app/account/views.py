import json

from common.models.errors import (
    AuthCodeNotMatchError,
    BusinessError,
    ConstraintError,
    MailAddressExistsError,
    MailAddressLockedError,
    MailAddressNotExistsError,
    MissingParameterError,
    UserExistsError,
)
from common.models.responses import (
    APIErrorResponse,
    APISuccessResponse,
    UnkownErrorResponse,
)
from django.forms import ValidationError
from rest_framework.views import APIView

from .models import AuthCode, User


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
