import re

from .constants import REGEX_EMAIL_ADDRESS
from .models.errors import InvalidFormatError


def validate_email(value):
    if not re.match(REGEX_EMAIL_ADDRESS, value):
        raise InvalidFormatError(target="メールアドレス")
