import 'package:white_cloud/importer.dart';

final registerUserProvider = StateNotifierProvider
    .autoDispose<RegisterUserStateNotifier, RegisterUserState>
    ((ref) => RegisterUserStateNotifier());

class RegisterUserStateNotifier extends StateNotifier<RegisterUserState> {
  RegisterUserStateNotifier() : super(RegisterUserState.init());

  updateUser({required UserFormData user}) {
    update(
      userName: user.userName,
      password: user.password,
      bio: user.bio,
      email: user.email,
      image: user.image,
    );
  }

  updateApiState({required ApiState apiState}) {
    update(apiState: apiState);
  }

  update({
    String? userName,
    String? password,
    String? bio,
    String? email,
    ImageData? image,
    ApiState? apiState,
  }) {
    final user = state.user;

    state = state.copyWith(
        user: user.copyWith(
          userName: userName ?? user.userName,
          password: password ?? user.password,
          bio: bio ?? user.bio,
          email: email ?? user.email,
          image: image ?? user.image,
        ),
        apiState: apiState ?? state.apiState);
  }

  registerUser({
    required UserFormData user,
    required Function(RegisterUserResponse) onSuccess,
    required Function(ErrorResponse) onFailure,
  }) {
    updateApiState(apiState: ApiState.loading);
    _registerUser(
      user: user,
      onSuccess: onSuccess,
      onFailure: onFailure,
    );
  }

  _registerUser({
    required UserFormData user,
    required Function(RegisterUserResponse) onSuccess,
    required Function(ErrorResponse) onFailure,
  }) {
    ApiRepository().registerUser(user: user).then(
          (result) => {
            result.when(
              onSuccess: (res) {
                updateApiState(apiState: ApiState.success);
                onSuccess(res);
              },
              onFailure: (err) {
                updateApiState(apiState: ApiState.error);
                onFailure(err);
              },
            ),
          },
        );
  }
}
