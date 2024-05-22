class EmailAddressValidator {
  final String target;

  EmailAddressValidator({required this.target});

  EmailAddressState validate() {
    final isValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',).hasMatch(target);

    if (target.isEmpty) {
      // 空
      return EmailAddressState.empty;
    } else if (!isValid) {
      // 不正
      return EmailAddressState.invalid;
    } else {
      // 正常
      return EmailAddressState.valid;
    }
  }
}

enum EmailAddressState {
  valid,
  empty,
  invalid
  ;

  get isValid => this == valid;
  get hasError => this == invalid;
}