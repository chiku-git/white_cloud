import re

from rest_framework import serializers

from .constants import REGEX_EMAIL_ADDRESS


def validate_email(email: str):
    if email is None or len(email.strip()) < 1:
        raise serializers.ValidationError(
            detail="メールアドレスが空です。",
            code="invalid_format",
        )
    if not re.match(REGEX_EMAIL_ADDRESS, email):
        raise serializers.ValidationError(
            detail="メールアドレスの形式が正しくありません。",
            code="invalid_format",
        )


def validate_user_name(name: str):
    if name is None or len(name.strip()) < 1:
        raise serializers.ValidationError(
            detail="ユーザー名は1文字以上で入力してください。",
            code="invalid_format",
        )
    if len(name) > 20:
        raise serializers.ValidationError(
            detail="ユーザー名は20文字以下で入力してください。",
            code="invalid_format",
        )
