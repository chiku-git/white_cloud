import re

from .constants import REGEX_EMAIL_ADDRESS
from .models.errors import InvalidFormatError


def validate_email(value: str):
    if value is None or value.strip().__len__ == 0:
        raise InvalidFormatError(target="メールアドレス")
    if not re.match(REGEX_EMAIL_ADDRESS, value):
        raise InvalidFormatError(target="メールアドレス")
