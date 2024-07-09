from account.models import User
from common.models.errors import BusinessError, ConstraintError, MissingParameterError
from common.models.responses import APIErrorResponse, APISuccessResponse
from django.forms import ValidationError
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.views import APIView

from .models import Post
from .serializers import CreatePostSerializer


# Create your views here.
class CreatePostV1(APIView):
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def post(self, request, *args, **kwargs):
        try:
            serializer = CreatePostSerializer(data=request.data)

            if serializer.is_valid():
                post = self._create(
                    user=request.user,
                    body=request.data["body"],
                )
                return APISuccessResponse(
                    body=CreatePostV1.Response(post=post),
                )
            else:
                raise ValidationError(serializer.errors)
        except KeyError as e:
            return APIErrorResponse(MissingParameterError(e))
        except BusinessError as e:
            return APIErrorResponse(e)
        except ValidationError as e:
            return APIErrorResponse(ConstraintError(e))

    def _create(self, user: User, body: str):
        post = Post.objects.create(user=user, body=body)
        return post

    class Response:
        def __init__(self, post: Post):
            self.post = {
                "id": post.id,
                "createdAt": post.created_at,
            }
