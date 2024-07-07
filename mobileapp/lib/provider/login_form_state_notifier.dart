import 'package:white_cloud/importer.dart';

import '../model/login_form.dart';

final loginFormProvider =
StateNotifierProvider.autoDispose<LoginFormNotifier, LoginForm>(
        (ref) => LoginFormNotifier());

class LoginFormNotifier extends StateNotifier<LoginForm> {

  LoginFormNotifier() : super(LoginForm.init());

  /// 値を更新する
  update({
    String? email,
    String? password,
    ErrorResponse? error,
  }) {
    state = state.copyWith(
      email: email ?? state.email,
      password: password ?? state.password,
      error: error,
    );
  }

  notifyApiError(ErrorResponse error) {
    update(error: error);
  }
}