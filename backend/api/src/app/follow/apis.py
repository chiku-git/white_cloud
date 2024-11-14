from account.models import User
from common.bases.api_bases import LoggedInAPI
from common.models.errors import UserNotExistsError, ValidationFailedError
from common.models.responses import APISuccessResponse

from .models import Follow
from .serializers import FollowListSerializer, FollowSerializer


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


class GetFollowListV1APIBase(LoggedInAPI):
    """フォロワーリスト取得API基底クラス"""

    MAX_SIZE = 100
    PAGE_SIZE = 20
    MAX_PAGE = MAX_SIZE / PAGE_SIZE  # 1検索ワードあたり最大100投稿

    def post(self, request, *args, **kwargs):
        serializer = FollowListSerializer(data=request.data)

        if serializer.is_valid(raise_exception=True):
            user_id = serializer.validated_data["userId"]

            # ユーザー取得
            user = User.objects.filter(id=user_id).first()
            # check: ユーザは存在するか
            if user is None:
                raise UserNotExistsError()

            # フォロワーを取得する
            page = serializer.validated_data["page"]
            start = page * self.PAGE_SIZE
            end = start + self.PAGE_SIZE

            follow_list = self.get_query(user=user).order_by("-created_at")[start:end]

            # 返却
            return APISuccessResponse(
                body=self.get_follow_list(follow_list=follow_list)
            )

    def get_query(self, user: User):
        pass

    def get_follow_list(self, follow_list: list[Follow]):
        pass


class GetFollowersV1API(GetFollowListV1APIBase):
    """フォロワーユーザー取得API"""

    def get_query(self, user: User):
        return user.follow_to

    def get_follow_list(self, follow_list: list[Follow]):
        return GetFollowersV1API.Response(follow_list=follow_list)

    class Response:
        def __init__(self, follow_list: list[Follow]) -> None:
            self.followers = list(
                map(
                    lambda follower: follower.by.get_public_properties(me=follower.by),
                    follow_list,
                )
            )


class GetFollowingV1API(GetFollowListV1APIBase):
    """フォロー中ユーザー取得API"""

    def get_query(self, user: User):
        return user.follow_by

    def get_follow_list(self, follow_list: list[Follow]):
        return GetFollowingV1API.Response(follow_list=follow_list)

    class Response:
        def __init__(self, follow_list: list[Follow]) -> None:
            self.following = list(
                map(
                    lambda follow: follow.to.get_public_properties(me=follow.by),
                    follow_list,
                )
            )
