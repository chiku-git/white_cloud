from account.models import User
from common.bases.api_bases import LoggedInAPI
from common.models.responses import APISuccessResponse

from .models import Post
from .serializers import CreatePostSerializer


# Create your views here.
class CreatePostV1(LoggedInAPI):
    """新規投稿API"""

    def post(self, request, *args, **kwargs):
        serializer = CreatePostSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            post = self._create(
                user=request.user,
                body=request.data["body"],
            )

            return APISuccessResponse(
                body=CreatePostV1.Response(post=post),
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
