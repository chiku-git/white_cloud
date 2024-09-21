from common.bases.serializer_bases import BaseSerializer, SearchSerializer
from common.validators import validate_email, validate_user_name
from rest_framework import serializers


def _get_default_email_field():
    return serializers.EmailField(
        label="メールアドレス",
        max_length=50,
        validators=[validate_email],
        error_messages={
            "max_length": "メールアドレスは{max_length}文字以内で入力してください",
        },
    )


def _get_default_password_field():
    return serializers.CharField(
        label="パスワード",
        min_length=8,
        allow_blank=False,
        allow_null=False,
        error_messages={
            "min_length": "パスワードは{min_length}以内で入力してください。",
        },
    )


class SendAuthCodeSerializer(BaseSerializer):
    email = _get_default_email_field()


class AuthenticateEmailSerializer(BaseSerializer):
    email = _get_default_email_field()

    code = serializers.CharField(
        label="認証コード",
        min_length=4,
        max_length=4,
        allow_blank=False,
        allow_null=False,
        error_messages={
            "max_length": "認証コードは{max_length}文字で入力してください。",
            "min_length": "認証コードは{min_length}文字で入力してください。",
        },
    )


class RegisterUserSerializer(BaseSerializer):
    userName = serializers.CharField(
        label="ユーザー名",
        max_length=20,
        allow_blank=False,
        allow_null=False,
        validators=[
            validate_user_name,
        ],
        error_messages={
            "max_length": "ユーザー名は{max_length}以内で入力してください。",
        },
    )

    password = _get_default_password_field()

    email = _get_default_email_field()

    bio = serializers.CharField(
        label="bio",
        max_length=100,
        allow_blank=True,
        allow_null=True,
        error_messages={
            "max_length": "bioは{max_length}以内で入力してください。",
        },
    )


class UpdateUserSerializer(BaseSerializer):
    userName = serializers.CharField(
        label="ユーザー名",
        max_length=20,
        allow_blank=False,
        allow_null=False,
        validators=[
            validate_user_name,
        ],
        error_messages={
            "max_length": "ユーザー名は{max_length}以内で入力してください。",
        },
    )

    password = serializers.CharField(
        label="パスワード",
        min_length=8,
        allow_blank=True,
        allow_null=True,
        required=False,
        error_messages={
            "min_length": "パスワードは{min_length}以内で入力してください。",
        },
    )

    email = serializers.EmailField(
        label="メールアドレス",
        max_length=50,
        validators=[validate_email],
        required=False,
        error_messages={
            "max_length": "メールアドレスは{max_length}文字以内で入力してください",
        },
    )

    bio = serializers.CharField(
        label="bio",
        max_length=100,
        allow_blank=True,
        allow_null=True,
        error_messages={
            "max_length": "bioは{max_length}以内で入力してください。",
        },
    )


class LoginSerializer(BaseSerializer):
    email = _get_default_email_field()
    password = _get_default_password_field()


class SearchUserSerializer(SearchSerializer):
    pass
