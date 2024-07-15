from django.urls import path

from .apis import CreatePostV1

urlpatterns = [
    path("create/v1/", CreatePostV1.as_view()),
]
