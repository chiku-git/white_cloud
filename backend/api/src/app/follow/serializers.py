from common.bases.serializer_bases import BaseSerializer
from rest_framework import serializers


class FollowSerializer(BaseSerializer):
    userId = serializers.UUIDField(
        label="ユーザーID",
        allow_null=False,
    )
