from django.urls import path

from .views import AuthenticateEmailV1API, RegisterUserV1API, SendAuthCodeV1API

urlpatterns = [
    path("send-auth-code/v1/", SendAuthCodeV1API.as_view()),
    path("authenticate-email/v1/", AuthenticateEmailV1API.as_view()),
    path("register/v1/", RegisterUserV1API.as_view()),
]
