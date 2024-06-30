import 'package:white_cloud/importer.dart';

final emailAuthFormProvider =
    StateNotifierProvider.autoDispose<EmailAuthFormNotifier, EmailAuthForm>(
        (ref) => EmailAuthFormNotifier(AuthEmailPage.authCodeLength));

class EmailAuthFormNotifier extends StateNotifier<EmailAuthForm> {
  final int length;
  get hasError => state.hasError;

  EmailAuthFormNotifier(this.length) : super(EmailAuthForm.init(length));

  put(int idx, String digit) {
    final digits = state.digits.toList();
    digits[idx] = digit;
    update(
      digits: digits,
      error: null,
    );
  }

  clear(int idx) => put(idx, "");

  update({String? email, ErrorResponse? error, List<String>? digits}) {
    state = state.copyWith(
      email: email ?? state.email,
      error: error,
      digits: digits ?? state.digits,
    );
  }
}
