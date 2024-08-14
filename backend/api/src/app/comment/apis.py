# Create your views here.
from account.models import User
from comment.models import Comment
from comment.serializers import PostReplySerializer
from common.bases.api_bases import LoggedInAPI
from common.models.responses import APISuccessResponse
from post.dtos import PostDigestResponse
from post.models import Post


class PostReplyV1API(LoggedInAPI):
    """投稿返信API"""

    def post(self, request, *args, **kwargs):
        serializer = PostReplySerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            data = serializer.validated_data
            me = request.user

            # 投稿を作成
            reply = Post.objects.create(user=me, body=data["body"])
            to = Post.objects.findById(id=data["replyToId"])

            # 返信先とリレーション
            Comment.objects.reply(to=to, reply=reply)

            return APISuccessResponse(
                body=PostReplyV1API.Response(
                    replyTo=to,
                    reply=reply,
                    me=me,
                ),
            )

    class Response:
        def __init__(self, replyTo: Post, reply: Post, me: User) -> None:
            self.replyTo = PostDigestResponse(
                post=replyTo,
                me=me,
            )
            self.reply = PostDigestResponse(
                post=reply,
                me=me,
            )
