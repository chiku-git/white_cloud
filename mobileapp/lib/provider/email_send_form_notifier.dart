import 'package:white_cloud/importer.dart';

final emailSendFormProvider =
    StateNotifierProvider.autoDispose<EmailSendFormNotifier, EmailSendForm>(
        (ref) => EmailSendFormNotifier());

class EmailSendFormNotifier extends StateNotifier<EmailSendForm> {
  late final EmailAddressValidator _emailAddressValidator;

  EmailSendFormNotifier() : super(EmailSendForm.init()) {
    _emailAddressValidator = EmailAddressValidator();
  }

  /// 値を更新する
  update({
    EmailState? newState,
    String? email,
    ErrorResponse? sendAuthCodeError,
  }) {
    state = state.copyWith(
      state: newState ?? state.state,
      email: email ?? state.email,
      sendAuthCodeError: sendAuthCodeError ?? state.sendAuthCodeError,
    );
  }

  notifyApiError(ErrorResponse error) {
    _emailAddressValidator.addInvalidEmail(email: state.email);
    update(
      newState: EmailState.apiError,
      email: state.email,
      sendAuthCodeError: error,
    );
  }

  /// メールアドレスを検証する
  validate({required String email}) {
    final result = _emailAddressValidator.validate(email: email);
    update(newState: result, email: email);
  }
}
