from common.models.errors import (
    BusinessError,
    ConstraintError,
    MailAddressExistsError,
    MailAddressLockedError,
    MissingParameterError,
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

            if user is not None:
                raise MailAddressExistsError()

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
