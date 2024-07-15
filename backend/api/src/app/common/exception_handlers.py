from common.models.errors import (
    APIExceptionError,
    AuthenticationError,
    BusinessError,
    ServerError,
    ValidationFailedError,
)
from common.models.responses import APIErrorResponse
from rest_framework import exceptions, serializers
from rest_framework.exceptions import APIException


def default_exception_handler(exc, context):
    if isinstance(exc, BusinessError):
        error = exc
    elif isinstance(exc, serializers.ValidationError):
        message, detail = ValidationErrorHandler(e=exc).convert()
        error = ValidationFailedError(message=message, detail=detail)
    elif isinstance(exc, APIException):
        error = APIExceptionHandler(e=exc).convert()
    else:
        error = ServerError(e=exc)

    return APIErrorResponse(e=error)


class BaseErrorHandler:
    def __init__(self, e: APIException) -> None:
        self.e = e

    def get_full_message(self):
        message = ""
        details = self.e.detail

        if hasattr(details, "values"):
            for error in details.values():
                message += "\n".join(error) + "\n"
        else:
            message = str(details)

        return message.rstrip()

    def convert(self):
        pass


class ValidationErrorHandler(BaseErrorHandler):
    def convert(self) -> tuple[str, dict]:
        message = self.get_full_message()
        detail = self.e.get_full_details()

        return message, detail


class APIExceptionHandler(BaseErrorHandler):
    def convert(self) -> BusinessError:
        error = self.e

        if (
            isinstance(error, exceptions.AuthenticationFailed)
            or isinstance(error, exceptions.NotAuthenticated)
            or isinstance(error, exceptions.PermissionDenied)
        ):
            return AuthenticationError(
                status_code=error.status_code,
                message=self.get_full_message(),
                detail=error.get_full_details(),
            )
        else:
            return APIExceptionError(
                status_code=error.status_code,
                detail=error.get_full_details(),
            )
