from django.forms import ValidationError
from rest_framework import status


class BusinessError(Exception):
    status_code: int
    code: str
    message: str
    detail: str = None


class MailAddressLockedError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_EMAIL_ADDRESS_LOCKED"
    message = "このメールアドレスはロックされています。別のメールアドレスで認証を行ってください。"
    detail = message


class MailAddressNotExistsError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_EMAIL_ADDRESS_NOT_EXISTS"
    message = "メールアドレスが不正です。再度認証コードを送信してください。"
    detail = message


class AuthCodeNotMatchError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_AUTH_CODE_NOT_MATCH"
    message = (
        "認証コードが一致しません。認証コードを正しく入力し、再度認証を行ってください。"
    )
    detail = message


class MailAddressExistsError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_EMAIL_ADDRESS_HAS_RESISTERD"
    message = "このメールアドレスは既に使用されています。別のメールアドレスで認証を行ってください。"
    detail = message


class MissingParameterError(BusinessError):
    status_code = status.HTTP_400_BAD_REQUEST
    code = "ERR_MISSING_PARAMETER"
    message = "送信されたデータが不正です。操作をやり直してください。"

    def __init__(self, key: str = None, e: KeyError = None, *args: object):
        if e is not None:
            key = str(e)

        self.detail = f"{key}がありません。"
        super().__init__(*args)


class InvalidFormatError(BusinessError):
    status_code = status.HTTP_400_BAD_REQUEST
    code = "ERR_INVALID_FORMAT"

    def __init__(self, target: str, detail: dict = None, *args: object):
        self.message = (
            f"{target}のフォーマットが正しくありません。再度入力してください。"
        )
        self.detail = self.message
        if detail is not None:
            self.detail = detail

        super().__init__(*args)


class ConstraintError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_CONSTRAINT"

    def __init__(self, error: ValidationError, *args: object):
        self.message = "エラーが発生しました。操作をやり直してください。"
        self.detail = str(error)
        super().__init__(*args)


class UserExistsError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_USER_EXISTS"

    def __init__(self, *args: object):
        self.message = "このメールアドレスは既に登録されています。別のメールアドレスで登録してください。"
        self.detail = self.message
        super().__init__(*args)


class UserLockedError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_USER_LOCKED"

    def __init__(self, *args: object):
        self.message = "この会員はロックされています。ログインできません。"
        self.detail = self.message
        super().__init__(*args)


class LoginError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_LOGIN_FAILED"

    def __init__(self, *args: object):
        self.message = "認証に失敗しました。メールアドレスまたはパスワードが正しくありません。もう一度試してください。"
        self.detail = self.message
        super().__init__(*args)


class UnknownError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_UNKNOWN"
    message = "不明なエラーが発生しました。操作をやり直してください。"

    def __init__(self, error: Exception, *args: object):
        self.detail = str(error)
        super().__init__(*args)
