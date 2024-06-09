import 'package:white_cloud/importer.dart';

final emailVOProvider =
    StateNotifierProvider.autoDispose<EmailVONotifier, EmailVO>(
        (ref) => EmailVONotifier());

class EmailVONotifier extends StateNotifier<EmailVO> {
  late final EmailAddressValidator _emailAddressValidator;

  EmailVONotifier() : super(EmailVO.init()) {
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

  /// 認証コードを送信する
  sendAuthCode({
    required Function onSuccess,
    required Function onFailure,
  }) {
    update(newState: EmailState.sending);
    _sendAuthCode(onSuccess: onSuccess, onFailure: onFailure);
  }

  /// 認証コードを送信する
  _sendAuthCode({
    required Function onSuccess,
    required Function onFailure,
  }) {
    final email = state.email;
    ApiRepository().sendAuthCode(email: email).then((result) {
      result.when(
          onSuccess: (res) {
            update(newState: EmailState.sendSuccess);
            onSuccess(res);
          },
          onFailure: (error) {
            _emailAddressValidator.addInvalidEmail(email: email);
            update(
              newState: EmailState.sendFailed,
              email: email,
              sendAuthCodeError: error,
            );
            onFailure(error);
          });
    });
  }

  /// メールアドレスを検証する
  validate({required String email}) {
    final result = _emailAddressValidator.validate(email: email);
    update(newState: result, email: email);
  }
}
