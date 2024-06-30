import 'package:white_cloud/importer.dart';

final userFormProvider =
    StateNotifierProvider.autoDispose<UserFormNotifier, UserForm>(
        (ref) => UserFormNotifier());

class UserFormNotifier extends StateNotifier<UserForm> {
  UserFormNotifier() : super(UserForm.init());

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
