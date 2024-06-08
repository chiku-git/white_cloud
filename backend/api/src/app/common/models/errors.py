from django.forms import ValidationError
from rest_framework import status


class BusinessError(BaseException):
    status_code: int
    code: str
    message: str
    detail: str = None


class MailAddressLockedError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_EMAIL_ADDRESS_LOCKED"
    message = (
        "このメールアドレスは使用できません。別のメールアドレスで認証を行ってください。"
    )
    detail = message


class MailAddressExistsError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_EMAIL_ADDRESS_HAS_RESISTERD"
    message = "このメールアドレスは既に登録されています。別のメールアドレスで認証を行ってください。"
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

    def __init__(self, target: str, *args: object):
        self.message = (
            f"{target}のフォーマットが正しくありません。再度入力してください。"
        )
        self.detail = self.message
        super().__init__(*args)


class ConstraintError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_CONSTRAINT"

    def __init__(self, error: ValidationError, *args: object):
        self.message = "エラーが発生しました。操作をやり直してください。"
        self.detail = str(error)
        super().__init__(*args)


class UnknownError(BusinessError):
    status_code = status.HTTP_500_INTERNAL_SERVER_ERROR
    code = "ERR_UNKNOWN"
    message = "不明なエラーが発生しました。操作をやり直してください。"

    def __init__(self, error: Exception, *args: object):
        self.detail = str(error)
        super().__init__(*args)
