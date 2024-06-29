import 'package:white_cloud/importer.dart';

final emailAuthStateProvider =
    StateNotifierProvider.autoDispose<EmailAuthStateNotifier, EmailAuthVO>(
        (ref) => EmailAuthStateNotifier(AuthEmailPage.authCodeLength));

class EmailAuthStateNotifier extends StateNotifier<EmailAuthVO> {
  final int length;
  late final String email;

  EmailAuthStateNotifier(this.length) : super(EmailAuthVO.init(length));

  put(int idx, String digit) {
    final digits = state.digits.toList();
    digits[idx] = digit;
    state = state.copyWith(
      digits: digits,
      authState: EmailAuthState.idle,
      error: null,
    );
  }

  updateAuthState({EmailAuthState? authState, ErrorResponse? error}) {
    state = state.copyWith(
      authState: authState ?? state.authState,
      error: error ?? state.error,
    );
  }

  clear(int idx) => put(idx, "");

  hasError() => state.authState.hasError;
  isFilled() => state.digits.length == length;
  get authCode => state.digits.join("");

  authenticateEmail({
    required Function(AuthenticateEmailResponse) onSuccess,
    required Function(ErrorResponse) onFailure,
  }) {
    updateAuthState(authState: EmailAuthState.authenticating);
    ApiRepository().authenticateEmail(email: email, code: authCode).then(
          (result) => result.when(
            onSuccess: (res) {
              updateAuthState(
                  authState: EmailAuthState.authSuccess,
                  error: null);
              onSuccess(res);
            },
            onFailure: (error) {
              updateAuthState(
                authState: EmailAuthState.authFailed,
                error: error,
              );
              onFailure(error);
            },
          ),
        );
  }
}
