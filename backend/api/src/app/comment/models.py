from django.db import models
from post.models import Post


class CommentManager(models.Manager):
    def reply(self, reply_to: Post, reply: Post):
        comment = self.model(
            reply_to=reply_to,
            reply_from=reply,
        )
        comment.full_clean()
        comment.save()

        return comment


# Create your models here.
class Comment(models.Model):
    reply_to = models.ForeignKey(
        verbose_name="返信先",
        to=Post,
        related_name="reply_to",
        on_delete=models.CASCADE,
    )

    reply_from = models.ForeignKey(
        verbose_name="返信内容",
        to=Post,
        related_name="reply_from",
        on_delete=models.CASCADE,
    )

    created_at = models.DateTimeField(
        verbose_name="返信日時",
        auto_now_add=True,
    )

    objects = CommentManager()

    class Meta:
        verbose_name = "返信"
        verbose_name_plural = "返信"
        db_table = "comments"
