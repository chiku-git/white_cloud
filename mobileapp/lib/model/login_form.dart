import 'package:white_cloud/importer.dart';

part 'login_form.freezed.dart';

@freezed
abstract class LoginForm implements _$LoginForm {
  LoginForm._();
  factory LoginForm({
    required String email,
    required String password,
    required ErrorResponse? error,
  }) = _LoginForm;

  factory LoginForm.init() => LoginForm(
    email: "",
    password: "",
    error: null
  );

  get isValid => !hasError && email.isNotEmpty && password.isNotEmpty;
  get hasError => error != null;
}