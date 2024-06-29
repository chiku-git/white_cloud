import re

from .constants import REGEX_EMAIL_ADDRESS
from .models.errors import InvalidFormatError


def validate_email(email: str):
    if email is None or len(email.strip()) < 1:
        raise InvalidFormatError(target="メールアドレス")
    if not re.match(REGEX_EMAIL_ADDRESS, email):
        raise InvalidFormatError(target="メールアドレス")


def validate_user_name(name: str):
    if name is None or len(name.strip()) < 1:
        raise InvalidFormatError(
            target="ユーザー名",
            detail={
                "username": "ユーザー名が短すぎます。1文字入力してください。",
            },
        )
    if len(name) > 20:
        raise InvalidFormatError(
            target="ユーザー名",
            detail={
                "username": "ユーザー名が長すぎます。20文字以内で入力してください。"
            },
        )
