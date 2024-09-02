from common.bases.serializer_bases import BaseSerializer, PostListSerializer
from rest_framework import serializers


class AddOrCancelFavoriteSerializer(BaseSerializer):
    postId = serializers.UUIDField(
        label="投稿ID",
        allow_null=False,
    )


class GetFavoritesSerializer(PostListSerializer):
    pass
