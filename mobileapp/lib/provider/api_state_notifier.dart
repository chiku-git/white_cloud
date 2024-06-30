import 'package:white_cloud/importer.dart';

final apiProvider =
StateNotifierProvider.autoDispose<ApiStateNotifier, ApiState>(
        (ref) => ApiStateNotifier());

class ApiStateNotifier extends StateNotifier<ApiState> {
  ApiStateNotifier() : super(ApiState.idle);

  /// 認証コードを送信する
  sendAuthCode({
    required EmailSendForm form,
    required Function(SendAuthCodeResponse) onSuccess,
    required Function(ErrorResponse) onFailure,
  }) {
    state = ApiState.loading;
    ApiRepository().sendAuthCode(email: form.email).then((result) {
      result.when(
          onSuccess: (res) {
            state = ApiState.success;
            onSuccess(res);
          },
          onFailure: (error) {
            state = ApiState.failure;
            onFailure(error);
          });
    });
  }

  /// メールアドレスを認証する
  authenticateEmail({
    required EmailAuthForm form,
    required Function(AuthenticateEmailResponse) onSuccess,
    required Function(ErrorResponse) onFailure,
  }) {
    state = ApiState.loading;
    ApiRepository().authenticateEmail(email: form.email, code: form.authCode).then(
          (result) => result.when(
        onSuccess: (res) {
          state = ApiState.success;
          onSuccess(res);
        },
        onFailure: (error) {
          state = ApiState.failure;
          onFailure(error);
        },
      ),
    );
  }

  /// 会員登録する
  registerUser({
    required UserForm form,
    required Function(RegisterUserResponse) onSuccess,
    required Function(ErrorResponse) onFailure,
  }) {
    state = ApiState.loading;
    ApiRepository().registerUser(form: form).then(
          (result) => {
        result.when(
          onSuccess: (res) {
            state = ApiState.success;
            onSuccess(res);
          },
          onFailure: (err) {
            state = ApiState.failure;
            onFailure(err);
          },
        ),
      },
    );
  }

  refresh() {
    state = ApiState.idle;
  }
}

enum ApiState {
  idle,
  loading,
  success,
  failure,
  ;
}