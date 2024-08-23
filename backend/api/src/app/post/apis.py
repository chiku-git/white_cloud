from account.models import User
from common.bases.api_bases import LoggedInAPI
from common.models.errors import PostNotExistsError
from common.models.responses import APISuccessResponse

from .dtos import PostDigestResponse, PostResponse
from .models import Post
from .serializers import (
    CreatePostSerializer,
    GetDigestSerializer,
    GetDigestsSerializer,
    SearchPostSerializer,
)


class PostListMixin:
    def create_post_digest_response(self, posts, me) -> list[PostDigestResponse]:
        results = []

        for post in posts:
            res = PostDigestResponse(post=post, me=me)
            results.append(res)

        return results


# Create your views here.
class CreatePostV1API(LoggedInAPI):
    """新規投稿API"""

    def post(self, request, *args, **kwargs):
        serializer = CreatePostSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            data = serializer.validated_data

            post = self._create(
                user=request.user,
                body=data["body"],
            )

            return APISuccessResponse(
                body=CreatePostV1API.Response(post=post),
            )

    def _create(self, user: User, body: str):
        post = Post.objects.create(user=user, body=body)
        return post

    class Response:
        def __init__(self, post: Post):
            self.post = PostResponse(post=post)


class SearchPostV1API(LoggedInAPI, PostListMixin):
    """投稿検索API"""

    MAX_SIZE = 100
    PAGE_SIZE = 20
    MAX_PAGE = MAX_SIZE / PAGE_SIZE  # 1検索ワードあたり最大100投稿

    def post(self, request, *args, **kwargs):
        serializer = SearchPostSerializer(data=request.data)
        me = request.user

        if serializer.is_valid(raise_exception=True):
            posts = self._search(
                params=serializer.validated_data,
                me=me,
            )
            digests = self.create_post_digest_response(posts=posts, me=me)

            return APISuccessResponse(
                body=SearchPostV1API.Response(
                    digests=digests,
                ),
            )

    def _search(self, params, me):
        keyword = params["keyword"]
        page = params["page"]

        start = page * self.PAGE_SIZE
        end = start + self.PAGE_SIZE

        return (
            Post.objects.filter(body__icontains=keyword)
            .order_by("-updated_at")
            .exclude(user=me)[start:end]
            .prefetch_related("favorites")
        )

    class Response:
        def __init__(self, digests: list[PostDigestResponse]):
            self.digests = digests


class GetDigestsV1API(LoggedInAPI, PostListMixin):
    """ダイジェスト取得API"""

    MAX_SIZE = 100
    PAGE_SIZE = 20
    MAX_PAGE = MAX_SIZE / PAGE_SIZE

    def post(self, request, *args, **kwargs):
        serializer = GetDigestsSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            me = request.user

            posts = self._search(
                params=serializer.validated_data,
                me=me,
            )

            digests = self.create_post_digest_response(
                posts=posts,
                me=me,
            )

            return APISuccessResponse(
                body=GetDigestsV1API.Response(
                    digests=digests,
                ),
            )

    def _search(self, params, me):
        page = params["page"]

        start = page * self.PAGE_SIZE
        end = start + self.PAGE_SIZE

        return (
            Post.objects.order_by("-updated_at")
            .exclude(user=me)[start:end]
            .prefetch_related("favorites")
        )

    class Response:
        def __init__(self, digests: list[PostDigestResponse]) -> None:
            self.digests = digests


class GetDigestV1API(LoggedInAPI):
    def post(self, request, *args, **kwargs):
        serializer = GetDigestSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            id = serializer.validated_data["id"]
            me = request.user
            post = Post.objects.filter(id=id).first()

            if post is None:
                raise PostNotExistsError()

            return APISuccessResponse(
                body=GetDigestV1API.Response(post=post, me=me),
            )

    class Response:
        def __init__(self, post: Post, me: User) -> None:
            self.digest = PostDigestResponse(post=post, me=me)
