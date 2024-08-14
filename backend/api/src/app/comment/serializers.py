from common.bases.serializer_bases import BaseSerializer
from rest_framework import serializers


class PostReplySerializer(BaseSerializer):
    replyToId = serializers.UUIDField(
        label="返信先投稿ID",
        allow_null=False,
    )

    body = serializers.CharField(
        label="返信内容",
        max_length=500,
        allow_Null=False,
        allow_Blank=False,
    )
