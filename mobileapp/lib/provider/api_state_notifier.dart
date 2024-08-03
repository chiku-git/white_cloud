import 'package:white_cloud/importer.dart';

final apiProvider =
StateNotifierProvider<ApiStateNotifier, ApiState>(
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
          },
          onCancel: () {
            // NOP
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
        onCancel: () {
          // NOP
        }
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
          onCancel: () {
            // NOP
          }
        ),
      },
    );
  }

  /// ログインする
  login({
    required String email,
    required String password,
    required Function(LoginResponse) onSuccess,
    required Function(ErrorResponse) onFailure,
  }) {
    state = ApiState.loading;
    ApiRepository().login(email: email, password: password).then(
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
          onCancel: () {
            // NOP
          }
        ),
      },
    );
  }

  /// 新規投稿する
  createPost({
    required String body,
    required Function(CreatePostResponse) onSuccess,
    required Function(ErrorResponse) onFailure,
  }) {
    state = ApiState.loading;
    ApiRepository().createPost(body: body).then(
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
          onCancel: () {
            // NOP
          }
        ),
      },
    );
  }

  /// お気に入り登録 or 解除をする
  toggleFavorite({
    required PostInfo post,
    required Function(FavoriteToggleResponse) onSuccess,
    required Function(ErrorResponse) onFailure,
  }) {
    state = ApiState.loading;
    ApiRepository().toggleFavorite(post: post).then((result) =>
      result.when(
          onSuccess: (res) {
            state = ApiState.success;
            onSuccess(res);
          },
          onFailure: (err) {
            state = ApiState.failure;
            onFailure(err);
          },
          onCancel: () {
            // NOP
          }
      )
    );
  }
}

enum ApiState {
  idle,
  loading,
  success,
  failure,
  ;
}