from common.bases.serializer_bases import BaseSerializer, PostListSerializer
from rest_framework import serializers


class FollowSerializer(BaseSerializer):
    userId = serializers.UUIDField(
        label="ユーザーID",
        allow_null=False,
    )


class FollowListSerializer(PostListSerializer):
    userId = serializers.UUIDField(
        label="ユーザーID",
        allow_null=False,
    )
