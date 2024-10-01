from account.models import User
from django.db import models


class FollowInfo:
    def __init__(self, is_following: bool, followers: int, follows: int) -> None:
        self.is_following = is_following
        self.followers = followers
        self.follows = follows


class FollowManager(models.Manager):
    pass


# Create your models here.
class Follow(models.Model):
    by = models.ForeignKey(
        verbose_name="フォロー元ユーザー",
        to=User,
        related_name="follow_by",
        on_delete=models.CASCADE,
    )

    to = models.ForeignKey(
        verbose_name="フォロー先ユーザー",
        to=User,
        related_name="follow_to",
        on_delete=models.CASCADE,
    )

    created_at = models.DateTimeField(
        verbose_name="フォロー日時",
        auto_now_add=True,
    )

    objects = FollowManager()

    class Meta:
        verbose_name = "フォロー"
        verbose_name_plural = "フォロー"
        db_table = "follows"
