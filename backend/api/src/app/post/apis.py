from account.models import User
from common.bases.api_bases import LoggedInAPI
from common.models.responses import APISuccessResponse

from .models import Post, PostResponse
from .serializers import CreatePostSerializer, SearchPostSerializer


# Create your views here.
class CreatePostV1API(LoggedInAPI):
    """新規投稿API"""

    def post(self, request, *args, **kwargs):
        serializer = CreatePostSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            post = self._create(
                user=request.user,
                body=request.data["body"],
            )

            return APISuccessResponse(
                body=CreatePostV1API.Response(post=post),
            )

    def _create(self, user: User, body: str):
        post = Post.objects.create(user=user, body=body)
        return post

    class Response:
        def __init__(self, post: Post):
            self.post = {
                "id": post.id,
                "createdAt": post.created_at,
            }


class SearchPostV1API(LoggedInAPI):
    """投稿検索API"""

    MAX_SIZE = 100
    PAGE_SIZE = 20
    MAX_PAGE = MAX_SIZE / PAGE_SIZE  # 1検索ワードあたり最大100投稿

    def post(self, request, *args, **kwargs):
        serializer = SearchPostSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            posts = self._search(
                params=serializer.validated_data,
                me=request.user,
            )
            results = self._create_result(posts=posts)

            return APISuccessResponse(
                body=SearchPostV1API.Response(
                    posts=results,
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
        )

    def _create_result(self, posts):
        results = []

        for post in posts:
            res = PostResponse(post=post)
            results.append(res)

        return results

    class Response:
        def __init__(self, posts: list[PostResponse]):
            self.posts = posts
