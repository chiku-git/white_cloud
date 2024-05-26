from django.urls import path
from .views import SendAuthCodeV1API

urlpatterns = [
    path("send-auth-code/v1/", SendAuthCodeV1API.as_view())
]
