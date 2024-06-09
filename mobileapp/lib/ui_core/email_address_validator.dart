class EmailAddressValidator {
  final List<String> _invalidEmails = [];

  /// メールアドレスを検証する
  EmailState validate({required String email}) {
    final hasMatch = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    ).hasMatch(email);

    if (email.isEmpty) {
      // 空
      return EmailState.empty;
    } else if (!hasMatch) {
      // フォーマット不正
      return EmailState.invalidFormat;
    } else if (_invalidEmails.contains(email)) {
      // APIエラーで使用できないメールアドレス
      return EmailState.invalidEmail;
    } else {
      // 正常
      return EmailState.valid;
    }
  }

  /// 使用できないメールアドレスを追加する
  addInvalidEmail({required String email}) {
    _invalidEmails.add(email);
  }
}

enum EmailState {
  // API送信前
  valid,
  empty,
  invalidFormat,
  invalidEmail,
  // API送信中、結果
  sending,
  sendSuccess,
  sendFailed,
  ;

  get isValid => this == valid;
  get hasError =>
      this == invalidFormat || this == invalidEmail || this == sendFailed;
}
