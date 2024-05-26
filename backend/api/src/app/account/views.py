from common.models.errors import (
    BusinessError,
    MailAddressLockedError,
    MissingParameterError,
)
from common.models.responses import APIErrorResponse, APISuccessResponse
from rest_framework.views import APIView

from .models import AuthCode


# Create your views here.
class SendAuthCodeV1API(APIView):
    def post(self, request, *args, **kwargs):
        try:
            email = request.data["email"]

            auth_code = AuthCode.objects.find_or_null(pk=email)

            if auth_code is None:
                auth_code = AuthCode.objects.generate(email=email)
            else:
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

    def _send_email(self, auth_code: AuthCode):
        auth_code.email_send_count += 1
        auth_code.save()

    class Response:
        def __init__(self, email: str):
            self.email = email
