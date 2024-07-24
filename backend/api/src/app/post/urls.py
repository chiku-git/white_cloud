from django.urls import path

from .apis import CreatePostV1API, GetDigestV1API, SearchPostV1API

urlpatterns = [
    path("create/v1/", CreatePostV1API.as_view()),
    path("search/v1/", SearchPostV1API.as_view()),
    path("digest/v1/", GetDigestV1API.as_view()),
]
