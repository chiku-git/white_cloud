# Create your views here.
from account.models import User
from common.bases.api_bases import LoggedInAPI
from common.models.responses import APISuccessResponse
from post.apis import PostListMixin
from post.dtos import PostDigestResponse
from post.models import Post

from .models import Comment
from .serializers import GetRepliesSerializer, PostReplySerializer


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


class GetRepliesV1API(LoggedInAPI, PostListMixin):
    """返信取得API"""

    MAX_SIZE = 100
    PAGE_SIZE = 20
    MAX_PAGE = MAX_SIZE / PAGE_SIZE  # 1検索ワードあたり最大100投稿

    def post(self, request, *args, **kwargs):
        serializer = GetRepliesSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            replies = self._filter_replies(params=serializer.validated_data)
            digests = self.create_post_digest_response(posts=replies, me=request.user)

            return APISuccessResponse(
                body=GetRepliesV1API.Response(digests=digests),
            )

    def _filter_replies(self, params):
        post_id = params["postId"]
        page = params["page"]

        start = page * self.PAGE_SIZE
        end = start + self.PAGE_SIZE

        comments = Comment.objects.filter(reply_to=post_id).order_by("-created_at")[
            start:end
        ]

        return list(map(lambda c: c.reply_from, comments))

    class Response:
        def __init__(self, digests) -> None:
            self.replies = digests
