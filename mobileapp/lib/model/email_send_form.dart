import 'package:white_cloud/importer.dart';

part 'email_send_form.freezed.dart';

@freezed
class EmailSendForm with _$EmailSendForm {
  factory EmailSendForm({
    required EmailState state,
    required String email,
    ErrorResponse? sendAuthCodeError,
  }) = _EmailSendForm;

  /// 初期データ取得
  factory EmailSendForm.init() => EmailSendForm(
        state: EmailState.empty,
        email: "",
        sendAuthCodeError: null,
      );
}
