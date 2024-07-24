from rest_framework import serializers


class SerializerMixin:
    def replaceErrorMessage(self):
        for field in self.fields:
            error_messages = self.fields[field].error_messages
            for key in error_messages.keys():
                error_messages[key] = error_messages[key].replace(
                    "この項目", self.fields[field].label
                )


class BaseSerializer(SerializerMixin, serializers.Serializer):
    def __init__(self, instance=None, data=..., **kwargs):
        super().__init__(instance, data, **kwargs)
        self.replaceErrorMessage()


class PostListSerializer(BaseSerializer):
    page = serializers.IntegerField(
        label="ページ",
        min_value=0,
        error_messages={
            "min_value": "ページは{min_value}以上で入力してください。",
        },
    )


class SearchSerializer(PostListSerializer):
    keyword = serializers.CharField(
        label="キーワード",
        allow_blank=False,
        allow_null=False,
        max_length=50,
        error_messages={
            "max_length": "キーワードは{max_length}以内で入力してください。",
        },
    )
