from common.exception_handlers import default_exception_handler
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.views import APIView


class APIBase(APIView):
    def get_exception_handler(self):
        return default_exception_handler


class NoLoginAPI(APIBase):
    authentication_classes = []
    permission_classes = []


class LoggedInAPI(APIBase):
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
