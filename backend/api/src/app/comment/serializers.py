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
        allow_null=False,
        allow_blank=False,
    )


class GetRepliesSerializer(BaseSerializer):
    postId = serializers.UUIDField(
        label="投稿ID",
        allow_null=False,
    )

    page = serializers.IntegerField(
        label="ページ",
        min_value=0,
        error_messages={
            "min_value": "ページは{min_value}以上で入力してください。",
        },
    )
