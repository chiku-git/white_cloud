from django.urls import path
from follow.apis import FollowV1API, UnFollowV1API

from app import settings

from .apis import (
    AuthenticateEmailV1API,
    LoginV1API,
    RegisterUserV1API,
    SearchUserV1API,
    SendAuthCodeV1API,
    UpdateUserV1API,
)
from .apis_test import CreateTestUsersV1API

urlpatterns = [
    path("send-auth-code/v1/", SendAuthCodeV1API.as_view()),
    path("authenticate-email/v1/", AuthenticateEmailV1API.as_view()),
    path("register/v1/", RegisterUserV1API.as_view()),
    path("update/v1/", UpdateUserV1API.as_view()),
    path("login/v1/", LoginV1API.as_view()),
    path("search/users/v1/", SearchUserV1API.as_view()),
    path("follow/v1/", FollowV1API.as_view()),
    path("unfollow/v1/", UnFollowV1API.as_view()),
]

if settings.DEBUG:
    urlpatterns += [path("test/create-test-users/v1/", CreateTestUsersV1API.as_view())]
