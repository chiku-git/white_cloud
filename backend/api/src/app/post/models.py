import uuid

from account.models import User
from django.db import models


class PostManager(models.Manager):
    def create(self, user: User, body: str):
        post = self.model(
            user=user,
            body=body,
        )
        post.full_clean()
        post.save(using=self._db)

        return post


class Post(models.Model):
    id = models.UUIDField(
        verbose_name="id",
        primary_key=True,
        default=uuid.uuid4,
        editable=False,
    )

    user = models.ForeignKey(
        verbose_name="投稿者",
        to=User,
        on_delete=models.CASCADE,
    )

    body = models.TextField(
        verbose_name="本文",
        max_length=1000,
        blank=False,
        null=False,
    )

    created_at = models.DateTimeField(
        verbose_name="登録日時",
        auto_now_add=True,
    )

    updated_at = models.DateTimeField(
        verbose_name="更新日時",
        auto_now=True,
    )

    objects = PostManager()

    class Meta:
        verbose_name = "投稿"
        verbose_name_plural = "投稿"
        db_table = "posts"
