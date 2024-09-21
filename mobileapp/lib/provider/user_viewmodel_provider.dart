import 'package:white_cloud/importer.dart';
import 'package:white_cloud/view_model/user_viewmodel.dart';

final userViewModelProvider =
    StateNotifierProvider<UserViewModelNotifier, UserViewmodel>(
        (ref) => throw UnimplementedError()
    );

class UserViewModelNotifier extends StateNotifier<UserViewmodel> {
  UserViewModelNotifier(super.viewmodel);

  update({required UserInfo user}) {
    state = UserViewmodel(user: user, isMe: state.isMe);
  }
}
