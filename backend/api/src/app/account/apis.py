import datetime
import json

from common.bases.api_bases import LoggedInAPI, NoLoginAPI
from common.models.errors import (
    AuthCodeNotMatchError,
    LoginError,
    MailAddressExistsError,
    MailAddressLockedError,
    MailAddressNotExistsError,
    UserExistsError,
    UserLockedError,
)
from common.models.responses import APISuccessResponse
from rest_framework.authtoken.models import Token

from .models import AuthCode, User
from .serializers import (
    AuthenticateEmailSerializer,
    LoginSerializer,
    RegisterUserSerializer,
    SearchUserSerializer,
    SendAuthCodeSerializer,
)


class SendAuthCodeV1API(NoLoginAPI):
    """認証コード送信API"""

    def post(self, request, *args, **kwargs):
        """POSTメソッド

        Args:
            request (Any): リクエストデータ

        Raises:
            ValidationFailedError: バリデーションエラー

        Returns:
            APIResponse: レスポンス
        """
        serializer = SendAuthCodeSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            email = serializer.validated_data["email"]
            return self._handleRequest(email=email)

    def _handleRequest(self, email: str):
        """レスポンスを生成する

        Args:
            email (str): メールアドレス

        Raises:
            MailAddressExistsError: メールアドレス登録済エラー
            MailAddressLockedError: メールアドレスロック中エラー

        Returns:
            APIResponse: レスポンス
        """
        auth_code = AuthCode.objects.find_or_null(pk=email)
        user = User.objects.find_by_email(email=email)
        if user is not None:  # メールアドレス登録済の場合
            raise MailAddressExistsError()
        if auth_code is None:  # 認証コードがない場合
            auth_code = AuthCode.objects.generate(email=email)
        else:  # 認証コード再送信の場合
            if auth_code.is_locked:
                raise MailAddressLockedError(email=email)

        self._send_email(auth_code)
        return APISuccessResponse(
            body=SendAuthCodeV1API.Response(
                email=auth_code.email,
            ),
        )

    def _send_email(self, auth_code: AuthCode):
        auth_code.email_send_count += 1
        auth_code.save()

    class Response:
        def __init__(self, email: str):
            self.email = email


class AuthenticateEmailV1API(NoLoginAPI):
    """メールアドレス認証API"""

    def post(self, request, *args, **kwargs):
        serializer = AuthenticateEmailSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            params = serializer.validated_data
            return self._handleRequest(
                email=params["email"],
                code=params["code"],
            )

    def _handleRequest(self, email: str, code: str):
        auth_code = AuthCode.objects.find_or_null(pk=email)
        user = User.objects.find_by_email(email=email)

        if user is not None:  # 既に使用されている
            raise MailAddressExistsError()
        if auth_code is None:  # 認証コードが存在していない
            raise MailAddressNotExistsError()
        if auth_code.is_locked:  # メールアドレスロック済
            raise MailAddressLockedError(email=email)

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


class RegisterUserV1API(NoLoginAPI):
    """会員登録API"""

    def post(self, request, *args, **kwargs):
        user = json.loads(request.data["user"])
        image = request.FILES.get("image")

        serializer = RegisterUserSerializer(data=user)

        if serializer.is_valid(raise_exception=True):
            return self._handleRequest(
                data=serializer.validated_data,
                image=image,
            )

    def _handleRequest(self, data, image):
        username = data["userName"]
        email = data["email"]
        bio = data["bio"]
        password = data["password"]

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
        return APISuccessResponse(
            body=RegisterUserV1API.Response(user=user),
        )

    class Response:
        def __init__(self, user: User):
            self.user = user.get_public_full_properties()


class LoginV1API(NoLoginAPI):
    """ログインAPI"""

    def post(self, request, *args, **kwargs):
        serializer = LoginSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            return self._handleRequest(serializer=serializer)

    def _handleRequest(self, serializer):
        email = serializer.validated_data["email"]
        password = serializer.validated_data["password"]

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
            body=LoginV1API.Response(
                token=token.key,
                user=user,
            ),
        )

    def _updateLoginDateTime(self, user: User):
        user.last_login_at = datetime.datetime.now()
        user.full_clean()
        user.save()

    class Response:
        def __init__(self, user: User, token: str):
            self.token = token
            self.user = user.get_public_full_properties()


class SearchUserV1API(LoggedInAPI):
    """会員検索API"""

    MAX_SIZE = 100
    PAGE_SIZE = 20
    MAX_PAGE = MAX_SIZE / PAGE_SIZE  # 1検索ワードあたり最大100会員

    def post(self, request, *args, **kwargs):
        serializer = SearchUserSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            params = serializer.validated_data
            page = params["page"]

            # 上限ページ数チェック
            if page >= self.MAX_PAGE:
                return APISuccessResponse(
                    body=SearchUserV1API.Response(
                        users=[],
                    ),
                )

            # ユーザを検索する
            users = self._search(
                data=params,
                me=request.user,
            )

            return APISuccessResponse(
                body=SearchUserV1API.Response(
                    users=self._create_result(users=users),
                ),
            )

    def _search(self, data, me) -> list[User]:
        keyword = data["keyword"]
        page = int(data["page"])

        start = page * self.PAGE_SIZE
        end = start + self.PAGE_SIZE

        return (
            User.objects.filter(username__icontains=keyword)
            .order_by("-last_login_at")
            .exclude(id=me.id)[start:end]
        )

    def _create_result(self, users: list[User]) -> list[dict]:
        results = []
        for user in users:
            results.append(user.get_public_properties())

        return results

    class Response:
        def __init__(self, users: list[User]):
            self.users = users
