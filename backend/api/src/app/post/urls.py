from django.urls import path

from .apis import CreatePostV1API, SearchPostV1API

urlpatterns = [
    path("create/v1/", CreatePostV1API.as_view()),
    path("search/v1/", SearchPostV1API.as_view()),
]
