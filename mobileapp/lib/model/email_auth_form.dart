import 'package:white_cloud/importer.dart';

part 'email_auth_form.freezed.dart';

@freezed
abstract class EmailAuthForm implements _$EmailAuthForm {
  EmailAuthForm._();
  factory EmailAuthForm({
    required List<String> digits,
    required String email,
    required int length,
    required ErrorResponse? error,
  }) = _EmailAuthForm;

  factory EmailAuthForm.init(int length) => EmailAuthForm(
      digits: List.generate(length, (_) => ""),
      email: "",
      length: length,
      error: null,
  );

  get authCode => digits.join("");
  get isFilled => digits.length == length;
  get hasError => error != null;
}