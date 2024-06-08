import json

from django.http import JsonResponse
from rest_framework import status

from .errors import BusinessError, UnknownError


class _APIResponse(JsonResponse):
    def __init__(
        self,
        body=None,
        error_body=None,
        **kwargs,
    ):
        super().__init__(
            data=_APIResponse.Data(body, error_body),
            encoder=_APIResponse.JsonEncoder,
            safe=False,
            json_dumps_params={"ensure_ascii": False},
            **kwargs,
        )

    class Data:
        def __init__(self, body=None, error_body=None):
            self.data = body
            self.error = error_body

    class JsonEncoder(json.JSONEncoder):
        def default(self, obj):
            if isinstance(obj, object):
                return obj.__dict__
            return json.JSONEncoder.default(self, obj)


class APISuccessResponse(_APIResponse):
    status_code = status.HTTP_200_OK

    def __init__(self, body, **kwargs):
        super().__init__(
            body=body,
            error_body=None,
            **kwargs,
        )


class APIErrorResponse(_APIResponse):
    def __init__(self, e: BusinessError, **kwargs):
        self.status_code = e.status_code
        super().__init__(
            body=None,
            error_body=APIErrorResponse.Body(
                code=e.code,
                message=e.message,
                detail=e.detail,
            ),
            **kwargs,
        )

    class Body:
        def __init__(self, code, message, detail=None):
            self.code = code
            self.message = message
            self.detail = detail


class UnkownErrorResponse(APIErrorResponse):
    def __init__(self, error: Exception, **kwargs):
        super().__init__(UnknownError(error), **kwargs)
