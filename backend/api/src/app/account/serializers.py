from rest_framework import serializers


class SearchUserSerializer(serializers.Serializer):
    keyword = serializers.CharField(
        required=True,
        allow_blank=False,
        allow_null=False,
        max_length=100,
    )
    page = serializers.IntegerField(
        required=True,
        min_value=0,
        max_value=5,
    )
