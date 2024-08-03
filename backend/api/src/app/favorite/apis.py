# Create your views here.
from account.models import User
from common.bases.api_bases import LoggedInAPI
from common.models.errors import PostNotExistsError
from common.models.responses import APISuccessResponse
from post.dtos import PostDigestResponse
from post.models import Post

from .models import Favorite
from .serializers import AddOrCancelFavoriteSerializer


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
