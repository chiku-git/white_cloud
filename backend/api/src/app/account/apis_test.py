import random
import string

from common.models.errors import BusinessError, ConstraintError, MissingParameterError
from common.models.responses import (
    APIErrorResponse,
    APISuccessResponse,
    UnkownErrorResponse,
)
from django.forms import ValidationError
from rest_framework.views import APIView

from .models import User


# Create your views here.
class CreateTestUsersV1API(APIView):
    def post(self, request, *args, **kwargs):
        try:
            count = request.data["count"]

            for i in range(count):
                signature = self.randomname(10)
                User.objects.create_user(
                    username=f"test-{i}-{signature}",
                    password="Chiku0228!",
                    bio="こんにちは！私は自動作成されたユーザーです！",
                    email=f"test-bulk-{i}-{signature}@test.com",
                    image=None,
                )

            return APISuccessResponse(body=CreateTestUsersV1API.Response())
        except KeyError as e:
            return APIErrorResponse(MissingParameterError(e))
        except BusinessError as e:
            return APIErrorResponse(e)
        except ValidationError as e:
            return APIErrorResponse(ConstraintError(e))
        except Exception as e:
            return UnkownErrorResponse(e)

    def randomname(self, n):
        return "".join(random.choices(string.ascii_letters + string.digits, k=n))

    class Response:
        def __init__(self):
            self.result = "OK"
