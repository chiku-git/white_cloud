import random
import string

from common.bases.api_bases import NoLoginAPI
from common.bases.serializer_bases import BaseSerializer
from common.models.responses import APISuccessResponse
from rest_framework import serializers

from .models import User


# Create your views here.
class CreateTestUsersV1API(NoLoginAPI):
    def post(self, request, *args, **kwargs):
        serializer = CreateTestUsersV1API.Serializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            count = serializer.validated_data["count"]

            for i in range(count):
                signature = self.randomname(10)
                User.objects.create_user(
                    username=f"test-{i}-{signature}",
                    password="Chiku0228!",
                    bio="こんにちは！私は自動作成されたユーザーです！",
                    email=f"test-bulk-{i}-{signature}@test.com",
                    image=None,
                )

            return APISuccessResponse(
                body=CreateTestUsersV1API.Response(),
            )

    def randomname(self, n):
        return "".join(random.choices(string.ascii_letters + string.digits, k=n))

    class Response:
        def __init__(self):
            self.result = "OK"

    class Serializer(BaseSerializer):
        count = serializers.IntegerField(
            label="作成数",
            max_value=999,
            min_value=1,
        )
