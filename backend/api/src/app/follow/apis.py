from account.models import User
from common.bases.api_bases import LoggedInAPI
from common.models.errors import UserNotExistsError, ValidationFailedError
from common.models.responses import APISuccessResponse

from .models import Follow
from .serializers import FollowSerializer


class FollowV1API(LoggedInAPI):
    """フォローAPI"""

    def post(self, request, *args, **kwargs):
        serializer = FollowSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            user_id = serializer.validated_data["userId"]
            me = request.user

            # ユーザー取得
            follow_user = User.objects.filter(id=user_id).first()

            # check: ユーザーは存在しているか
            if follow_user is None:
                raise UserNotExistsError()

            # check: 自分自身へのフォローは禁止
            if follow_user.id == me.id:
                raise ValidationFailedError(
                    message="自分自身はフォローできません。",
                    detail="自分自身はフォローできません。",
                )

            # check: 既にフォローしているか（二重フォローにならないか）
            if me.follow_by.filter(to_id=follow_user.id).exists():
                raise ValidationFailedError(
                    message="既にフォロー中です。", detail="既にフォロー中です。"
                )

            # フォロー登録
            Follow.objects.create(by=me, to=follow_user)

            # 返却
            return APISuccessResponse(
                body=FollowV1API.Response(user=follow_user, me=me)
            )

    class Response:
        def __init__(self, user: User, me: User) -> None:
            self.user = user.get_public_properties(me=me)


class UnFollowV1API(LoggedInAPI):
    """フォロー解除API"""

    def post(self, request, *args, **kwargs):
        serializer = FollowSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            user_id = serializer.validated_data["userId"]
            me = request.user

            # ユーザー取得
            follow_user = User.objects.filter(id=user_id).first()

            # check: ユーザーは存在しているか
            if follow_user is None:
                raise UserNotExistsError()

            # check: 自分自身へのフォロー解除は禁止
            if follow_user.id == me.id:
                raise ValidationFailedError(
                    message="自分自身はフォロー解除できません。",
                    detail="自分自身はフォロー解除できません。",
                )

            # check: フォローしているか（未フォローでの解除不可）
            if not me.follow_by.filter(to_id=follow_user.id).exists():
                raise ValidationFailedError(
                    message="このユーザーはフォローしていません。",
                    detail="このユーザーはフォローしていません。",
                )

            # フォロー解除
            Follow.objects.filter(by=me, to=follow_user).delete()

            # 返却
            return APISuccessResponse(
                body=FollowV1API.Response(user=follow_user, me=me)
            )

    class Response:
        def __init__(self, user: User, me: User) -> None:
            self.user = user.get_public_properties(me=me)
