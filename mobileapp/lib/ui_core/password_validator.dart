class PasswordValidator {
  PasswordValidateState validate(String? password) {
    if (password == null || password.isEmpty) return PasswordValidateState.ok;
    // 長さチェック
    if (!_isValidLength(password)) return PasswordValidateState.tooShort;
    // 文字チェック
    if (!_isValidChars(password)) return PasswordValidateState.invalidFormat;

    return PasswordValidateState.ok;
  }

  bool _isValidLength(String password) {
    return password.length >= 8;
  }

  bool _isValidChars(String password) {
    return RegExp(
      r"^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@$!%*?&])[A-Za-z0-9@$!%*?&]{8,}$",
    ).hasMatch(password);
  }
}

enum PasswordValidateState {
  ok,
  tooShort,
  invalidFormat,
  ;

  bool get isOK => this == ok;
}