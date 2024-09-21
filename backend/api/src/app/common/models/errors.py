from rest_framework import status
from rest_framework.exceptions import APIException


class BusinessError(APIException):
    def __init__(self, status_code=None, code=None, message=None, detail=None):
        self.status_code = status_code
        self.message = message
        self.code = code
        self.detail = detail
        super().__init__(detail, code)


class MailAddressLockedError(BusinessError):
    def __init__(self, email: str, detail: str | None = None):
        status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
        code = "ERR_MAIL_LOCKED"
        message = f"このメールアドレス({email})はロックされています。別のメールアドレスを使用してください。"
        detail = detail if detail is not None else message
        super().__init__(
            status_code=status_code,
            code=code,
            message=message,
            detail=detail,
        )


class MailAddressExistsError(BusinessError):
    def __init__(self, message=None, detail=None):
        status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
        code = "ERR_EMAIL_EXISTS"
        message = (
            message
            if message is not None
            else "このメールアドレスは既に登録されています。別のメールアドレスを使用してください"
        )
        detail = detail if detail is not None else message
        super().__init__(status_code, code, message, detail)


class MailAddressNotExistsError(BusinessError):
    def __init__(self, status_code=None, code=None, message=None, detail=None):
        status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
        code = "ERR_EMAIL_NOT_EXISTS"
        message = "メールアドレスが存在しません。再度認証コードを送信してください。"
        detail = detail if detail is not None else message
        super().__init__(status_code, code, message, detail)


class AuthCodeNotMatchError(BusinessError):
    def __init__(self):
        status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
        code = "ERR_AUTH_CODE_NOT_MATCH"
        message = "認証コードが一致しません。認証コードを正しく入力し、再度認証を行ってください。"
        detail = message
        super().__init__(status_code, code, message, detail)


class ValidationFailedError(BusinessError):
    def __init__(self, message: str, detail: str):
        status_code = status.HTTP_400_BAD_REQUEST
        code = "ERR_VALIDATION"
        super().__init__(
            status_code=status_code,
            code=code,
            message=message,
            detail=detail,
        )


class UserExistsError(BusinessError):
    def __init__(self):
        status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
        code = "ERR_USER_EXISTS"
        message = "このメールアドレスは既に登録されています。別のメールアドレスで登録してください。"
        detail = message
        super().__init__(
            status_code,
            code,
            message,
            detail,
        )


class UserNotExistsError(BusinessError):
    def __init__(self):
        status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
        code = "ERR_USER_NOT_EXISTS"
        message = "会員が存在しません。削除されている可能性があります。"
        detail = message
        super().__init__(
            status_code,
            code,
            message,
            detail,
        )


class PostNotExistsError(BusinessError):
    def __init__(self):
        status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
        code = "ERR_POST_NOT_EXISTS"
        message = "この投稿は削除されています。"
        detail = message
        super().__init__(
            status_code,
            code,
            message,
            detail,
        )


class LoginError(BusinessError):
    def __init__(self):
        status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
        code = "ERR_LOGIN_FAILED"
        message = (
            "認証に失敗しました。メールアドレスまたはパスワードが正しくありません。"
        )
        detail = message
        super().__init__(status_code, code, message, detail)


class UserLockedError(BusinessError):
    def __init__(self):
        status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
        code = "ERR_USER_LOCKED"
        message = "この会員はロックされています。ログインできません。"
        detail = message
        super().__init__(status_code, code, message, detail)


class AuthenticationError(BusinessError):
    def __init__(self, status_code, message, detail):
        status_code = status_code
        code = "ERR_API_AUTHENTICATION"
        super().__init__(status_code, code, message, detail)


class APIExceptionError(BusinessError):
    def __init__(self, status_code, detail):
        status_code = status_code
        code = "ERR_API_EXCEPTION"
        message = "サーバーエラーが発生したため、処理を中断しました。"
        super().__init__(status_code, code, message, detail)


class ServerError(BusinessError):
    def __init__(self, e: APIException):
        status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
        code = "ERR_SERVER"
        message = "サーバーエラーが発生したため、処理を中断しました。"
        detail = {
            "type": type(e).__name__,
            "detail": (
                e.get_full_details() if hasattr(e, "get_full_details") else str(e)
            ),
        }
        super().__init__(
            status_code=status_code,
            code=code,
            message=message,
            detail=detail,
        )
