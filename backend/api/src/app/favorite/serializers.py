from common.bases.serializer_bases import BaseSerializer
from rest_framework import serializers


class AddOrCancelFavoriteSerializer(BaseSerializer):
    postId = serializers.UUIDField(
        label="投稿ID",
        allow_null=False,
    )
