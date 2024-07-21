import random
import uuid

from common.constants import MAX_AUTH_EMAIL_COUNT, MAX_SEND_AUTH_CODE_COUNT
from common.validators import validate_email, validate_user_name
from django.contrib.auth.models import (
    AbstractBaseUser,
    BaseUserManager,
    PermissionsMixin,
)
from django.db import models


class UserManager(BaseUserManager):
    """ユーザーマネージャ"""

    def _create_user(
        self,
        username,
        email,
        bio,
        password,
        image,
        save_sync,
        **extra_fields,
    ):
        email = self.normalize_email(email)
        user = self.model(
            username=username,
            email=email,
            bio=bio,
            image=image,
            **extra_fields,
        )
        user.set_password(password)
        user.full_clean()
        if save_sync:
            user.save()
        else:
            user.save()

        return user

    def create_user(
        self,
        username,
        email,
        bio=None,
        password=None,
        image=None,
        last_login_at=None,
        save_sync=True,
        **extra_fields,
    ):
        extra_fields.setdefault("is_active", True)
        extra_fields.setdefault("is_superuser", False)
        extra_fields.setdefault("is_staff", False)
        extra_fields.setdefault("last_login_at", last_login_at)

        return self._create_user(
            username=username,
            email=email,
            bio=bio,
            password=password,
            image=image,
            save_sync=save_sync,
            **extra_fields,
        )

    def create_superuser(
        self,
        username,
        email,
        bio=None,
        password=None,
        image=None,
        last_login_at=None,
        save_sync=True,
        **extra_fields,
    ):
        extra_fields.setdefault("is_active", True)
        extra_fields.setdefault("is_superuser", True)
        extra_fields.setdefault("is_staff", True)
        extra_fields.setdefault("last_login_at", last_login_at)

        return self._create_user(
            username=username,
            email=email,
            bio=bio,
            password=password,
            image=image,
            save_sync=save_sync,
            **extra_fields,
        )

    def find_by_email(self, email):
        return self.filter(email=email).first()


class User(AbstractBaseUser, PermissionsMixin):
    """ユーザー"""

    id = models.UUIDField(
        verbose_name="id",
        primary_key=True,
        default=uuid.uuid4,
        editable=False,
    )

    username = models.CharField(
        verbose_name="ユーザー名",
        max_length=20,
        unique=False,
        blank=False,
        null=False,
        validators=[
            validate_user_name,
        ],
    )

    image = models.ImageField(
        verbose_name="写真",
        upload_to="images/user/",
        null=True,
        blank=True,
    )

    email = models.EmailField(
        verbose_name="メールアドレス",
        max_length=100,
        unique=True,
        blank=False,
        validators=[
            validate_email,
        ],
    )

    bio = models.TextField(
        verbose_name="自己紹介メッセージ",
        max_length=100,
        blank=True,
        null=True,
    )

    last_login_at = models.DateTimeField(
        verbose_name="最終ログイン日時",
        blank=True,
        null=True,
    )

    created_at = models.DateTimeField(
        verbose_name="登録日時",
        auto_now_add=True,
    )

    updated_at = models.DateTimeField(
        verbose_name="更新日時",
        auto_now=True,
    )

    is_active = models.BooleanField(
        verbose_name="有効",
        default=True,
    )

    is_superuser = models.BooleanField(
        verbose_name="管理者権限",
        default=False,
    )

    is_staff = models.BooleanField(
        verbose_name="スタッフ権限",
        default=False,
    )

    objects = UserManager()

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = ["username"]

    def get_public_full_properties(self) -> dict:
        image = None
        if self.image:
            image = self.image

        return {
            "id": self.id,
            "userName": self.username,
            "image": image,
            "email": self.email,
            "bio": self.bio,
            "lastLoginAt": self.last_login_at,
            "createdAt": self.created_at,
            "updatedAt": self.updated_at,
        }

    def get_public_properties(self) -> dict:
        image = None
        if self.image:
            image = self.image

        return {
            "id": self.id,
            "userName": self.username,
            "image": image,
            "bio": self.bio,
        }

    def __str__(self):
        return self.username

    class Meta:
        verbose_name = "ユーザー"
        verbose_name_plural = "ユーザー"
        db_table = "users"


class _AuthCodeManager(models.Manager):
    def generate(self, email, auth_code=None):
        """認証コードを生成する

        Args:
            email (string): メールアドレス
            auth_code (string): 認証コード（4桁）

        Returns:
            AuthCode: 認証コードオブジェクト
        """
        if auth_code is None:
            auth_code = AuthCode.generate_random_digits()

        auth_code = AuthCode(email=email, auth_code=auth_code)
        auth_code.validate_constraints()
        return auth_code

    def find_or_null(self, pk):
        return self.filter(pk=pk).first()

    def delete(self, pk):
        self.filter(pk=pk).delete()


class AuthCode(models.Model):
    email = models.EmailField(
        verbose_name="メールアドレス",
        primary_key=True,
        max_length=50,
        validators=[
            validate_email,
        ],
    )
    auth_code = models.CharField(
        verbose_name="認証コード",
        max_length=4,
        blank=False,
        null=False,
    )
    email_send_count = models.IntegerField(
        verbose_name="メール送信回数",
        default=0,
    )
    authentication_tries = models.IntegerField(
        verbose_name="認証試行回数",
        default=0,
    )
    is_locked = models.BooleanField(
        verbose_name="ロック済み",
        default=False,
    )
    created_at = models.DateTimeField(
        verbose_name="発行日時",
        auto_now=True,
    )

    objects = _AuthCodeManager()

    def save(self):
        if self.email_send_count >= MAX_SEND_AUTH_CODE_COUNT:
            self.is_locked = True
        if self.authentication_tries >= MAX_AUTH_EMAIL_COUNT:
            self.is_locked = True
        self.full_clean()
        super().save()

    @classmethod
    def generate_random_digits(cls):
        return random.randint(1000, 9999)

    def __str__(self):
        return self.email

    class Meta:
        verbose_name = "認証コード"
        verbose_name_plural = "認証コード"
        db_table = "auth_codes"
