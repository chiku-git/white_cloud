import 'package:white_cloud/importer.dart';

final userViewModelProvider =
    StateNotifierProvider<UserViewModelNotifier, UserViewmodel>(
        (ref) => throw UnimplementedError()
    );

class UserViewModelNotifier extends StateNotifier<UserViewmodel> {
  UserViewModelNotifier(super.viewmodel);

  update({required UserInfo user}) {
    state = UserViewmodel(user: user, isMe: state.isMe);
  }

  updateFromUserMiniInfo({required UserMiniInfo user}) {
    state = UserViewmodel(
        user: UserInfo(
            id: user.id,
            userName: user.userName,
            email: state.user.email,
            bio: user.bio,
            createdAt: state.user.createdAt,
            updatedAt: state.user.updatedAt,
            lastLoginAt: state.user.lastLoginAt,
            followInfo: user.followInfo,
            image: user.image,
        ),
        isMe: state.isMe)
    ;
  }
}
