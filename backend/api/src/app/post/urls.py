from comment.apis import GetRepliesV1API, PostReplyV1API
from django.urls import path
from favorite.apis import FavoriteToggleV1API

from .apis import CreatePostV1API, GetDigestsV1API, GetDigestV1API, SearchPostV1API

urlpatterns = [
    path("create/v1/", CreatePostV1API.as_view()),
    path("search/v1/", SearchPostV1API.as_view()),
    path("digests/v1/", GetDigestsV1API.as_view()),
    path("digest/v1/", GetDigestV1API.as_view()),
    path("favorite/toggle/v1/", FavoriteToggleV1API.as_view()),
    path("reply/v1/", PostReplyV1API.as_view()),
    path("replies/v1/", GetRepliesV1API.as_view()),
]
