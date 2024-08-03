from account.models import User
from django.db import models
from post.models import Post


class FavoriteManager(models.Manager):
    def addOrCancel(self, post: Post, user: User):
        favorite = self.filter(post=post, user=user).first()

        if favorite is not None:
            # 削除
            favorite.delete()
        else:
            # 追加
            self.create(post=post, user=user)


# Create your models here.
class Favorite(models.Model):
    post = models.ForeignKey(
        verbose_name="投稿",
        to=Post,
        related_name="favorites",
        on_delete=models.CASCADE,
    )

    user = models.ForeignKey(
        verbose_name="ユーザー",
        to=User,
        on_delete=models.CASCADE,
    )

    created_at = models.DateTimeField(
        verbose_name="お気に入り登録日時",
        auto_now_add=True,
    )

    objects = FavoriteManager()

    class Meta:
        verbose_name = "お気に入り"
        verbose_name_plural = "お気に入り"
        db_table = "favorites"


class FavoriteSummary:
    def __init__(self, count: int, isMyFavorite: bool) -> None:
        self.count = count
        self.isMyFavorite = isMyFavorite
