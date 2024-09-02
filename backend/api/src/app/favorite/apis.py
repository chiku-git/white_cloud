# Create your views here.
from account.models import User
from common.bases.api_bases import LoggedInAPI
from common.models.errors import PostNotExistsError
from common.models.responses import APISuccessResponse
from post.apis import PostListMixin
from post.dtos import PostDigestResponse
from post.models import Post

from .models import Favorite
from .serializers import AddOrCancelFavoriteSerializer, GetFavoritesSerializer


class FavoriteToggleV1API(LoggedInAPI):
    """お気に入り登録/解除API"""

    def post(self, request, *args, **kwargs):
        serializer = AddOrCancelFavoriteSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            data = serializer.validated_data
            me = request.user

            # 投稿を取得
            post = Post.objects.findById(id=data["postId"])
            if post is None:
                raise PostNotExistsError()

            Favorite.objects.addOrCancel(post=post, user=me)

            digest = (
                Post.objects.filter(id=post.id).prefetch_related("favorites").first()
            )

            return APISuccessResponse(
                body=FavoriteToggleV1API.Response(
                    digest=digest,
                    me=me,
                )
            )

    class Response:
        def __init__(self, digest: Post, me: User) -> None:
            self.digest = PostDigestResponse(post=digest, me=me)


class GetFavoritesV1API(LoggedInAPI, PostListMixin):
    """お気に入り取得API"""

    MAX_SIZE = 100
    PAGE_SIZE = 20
    MAX_PAGE = MAX_SIZE / PAGE_SIZE

    def post(self, request, *args, **kwargs):
        serializer = GetFavoritesSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            page = serializer.validated_data["page"]
            user = request.user
            start = page * self.PAGE_SIZE
            end = start + self.PAGE_SIZE

            favs = Favorite.objects.filter(user=user).order_by("-created_at")[start:end]

            digests = []

            for fav in favs:
                digests.append(fav.post)

            return APISuccessResponse(
                body=GetFavoritesV1API.Response(
                    digests=self.create_post_digest_response(digests, user),
                ),
            )

    class Response:
        def __init__(self, digests: list[PostDigestResponse]) -> None:
            self.digests = digests
