import 'package:white_cloud/importer.dart';

part 'register_user_state.freezed.dart';

@freezed
abstract class RegisterUserState implements _$RegisterUserState {
  RegisterUserState._();
  factory RegisterUserState({
    required UserFormData user,
    required ApiState apiState,
  }) = _RegisterUserState;

  factory RegisterUserState.init() => RegisterUserState(
      user: UserFormData.init(),
      apiState: ApiState.idle,
  );

  bool canRegister() {
    return user.isValid();
  }
}

enum ApiState {
  idle,
  loading,
  success,
  error,
}