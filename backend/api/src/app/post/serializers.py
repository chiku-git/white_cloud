from common.bases.serializer_bases import SerializerMixin
from rest_framework import serializers

from .models import Post


class CreatePostSerializer(SerializerMixin, serializers.ModelSerializer):
    def __init__(self, instance=None, data=..., **kwargs):
        super().__init__(instance, data, **kwargs)
        self.replaceErrorMessage()

    class Meta:
        model = Post
        fields = ("body",)
