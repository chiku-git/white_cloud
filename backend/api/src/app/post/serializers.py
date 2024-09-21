from common.bases.serializer_bases import (
    BaseSerializer,
    PostListSerializer,
    SearchSerializer,
    SerializerMixin,
)
from rest_framework import serializers

from .models import Post


class CreatePostSerializer(SerializerMixin, serializers.ModelSerializer):
    def __init__(self, instance=None, data=..., **kwargs):
        super().__init__(instance, data, **kwargs)
        self.replaceErrorMessage()

    class Meta:
        model = Post
        fields = ("body",)


class SearchPostSerializer(SearchSerializer):
    pass


class GetDigestsSerializer(PostListSerializer):
    pass


class GetDigestSerializer(BaseSerializer):
    id = serializers.UUIDField(
        label="投稿ID",
        allow_null=False,
    )


class GetUserDigestsSerializer(PostListSerializer):
    userId = serializers.UUIDField(
        label="ユーザーID",
        allow_null=False,
    )
