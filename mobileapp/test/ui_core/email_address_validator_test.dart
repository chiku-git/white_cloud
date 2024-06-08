import 'package:flutter_test/flutter_test.dart';
import 'package:white_cloud/importer.dart';

void main() {
  test('メールアドレスが空の場合にemptyとなること', () {
    final actual = EmailAddressValidator().validate(email: "");
    expect(actual, EmailState.empty);
  });

  test('メールアドレスの利用者情報がない場合にinvalidFormatとなること', () {
    final actual = EmailAddressValidator().validate(email: '@google.com');
    expect(actual, EmailState.invalidFormat);
  });

  test('メールアドレスのドメイン情報がない場合にinvalidFormatとなること', () {
    final actual = EmailAddressValidator().validate(email: 'user.info@');
    expect(actual, EmailState.invalidFormat);
  });

  test('メールアドレスに日本語が含まれる場合invalidFormatとなること', () {
    final actual = EmailAddressValidator().validate(email: 'user.iあnfo@google.com');
    expect(actual, EmailState.invalidFormat);
  });

  test('メールアドレスに正常な場合にvalidとなること', () {
    final actual = EmailAddressValidator().validate(email: 'user.info@google.com');
    expect(actual, EmailState.valid);
  });

  test('使用できないメールアドレスの場合にinvalidEmailとなること', () {
    final validator = EmailAddressValidator();
    validator.addInvalidEmail(email: "hogehoge@gmail.com");
    final actual = validator.validate(email: "hogehoge@gmail.com");
    expect(actual, EmailState.invalidEmail);
  });
}