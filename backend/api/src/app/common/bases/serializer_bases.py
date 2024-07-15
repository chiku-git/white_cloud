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
