import uuid
from django.db import models
from django.contrib.auth.models import (
    AbstractBaseUser,
    PermissionsMixin,
    BaseUserManager,
)


class UserManager(BaseUserManager):
    """ユーザーマネージャ"""

    def _create_user(self, username, email, bio, password, **extra_fields):
        email = self.normalize_email(email)
        user = self.model(username=username, email=email, bio=bio, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        user.full_clean()

        return user

    def create_user(self, username, email, bio=None, password=None, **extra_fields):
        extra_fields.setdefault("is_active", True)
        extra_fields.setdefault("is_superuser", False)
        extra_fields.setdefault("is_staff", False)

        return self._create_user(
            username=username, email=email, bio=bio, password=password, **extra_fields
        )

    def create_superuser(
        self, username, email, bio=None, password=None, **extra_fields
    ):
        extra_fields.setdefault("is_active", True)
        extra_fields.setdefault("is_superuser", True)
        extra_fields.setdefault("is_staff", True)

        return self._create_user(
            username=username, email=email, bio=bio, password=password, **extra_fields
        )


class User(AbstractBaseUser, PermissionsMixin):
    """ユーザー"""

    id = models.UUIDField(
        verbose_name="id", primary_key=True, default=uuid.uuid4, editable=False
    )

    username = models.CharField(
        verbose_name="ユーザー名",
        max_length=20,
        unique=False,
        blank=False,
        null=False,
    )

    email = models.EmailField(
        verbose_name="メールアドレス",
        max_length=100,
        unique=True,
        blank=False,
    )

    bio = models.TextField(
        verbose_name="自己紹介メッセージ", max_length=100, blank=True, null=True
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

    is_superuser = models.BooleanField(verbose_name="管理者権限", default=False)

    is_staff = models.BooleanField(verbose_name="スタッフ権限", default=False)

    objects = UserManager()

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = ["username"]

    def __str__(self):
        return self.username

    class Meta:
        verbose_name = "ユーザー"
        verbose_name_plural = "ユーザー"
        db_table = "users"
