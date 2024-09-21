import 'package:white_cloud/importer.dart';
import 'package:white_cloud/model/user_form.dart';

final userFormProvider =
    StateNotifierProvider.autoDispose<UserFormNotifier, UserForm>(
        (ref) => throw UnimplementedError());

class UserFormNotifier extends StateNotifier<UserForm> {
  late final bool isEdit;
  UserFormNotifier({required UserForm user}): super(user) {
    isEdit = user.userName.isNotEmpty;
  }

  updateUser({
    required UserForm user,
  }) {
    update(
      userName: user.userName,
      password: user.password,
      bio: user.bio,
      email: user.email,
      image: user.image,
    );
  }

  update({
    String? userName,
    String? password,
    String? bio,
    String? email,
    ImageData? image,
  }) {
    state = state.copyWith(
      userName: userName ?? state.userName,
      password: password ?? state.password,
      bio: bio ?? state.bio,
      email: email ?? state.email,
      image: image ?? state.image,
    );
  }
}
