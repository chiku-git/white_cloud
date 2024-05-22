import 'package:flutter_test/flutter_test.dart';
import 'package:white_cloud/importer.dart';

void main() {
  test('メールアドレスが空の場合にemptyとなること', () {
    final target = EmailAddressValidator(target: '');
    expect(target.validate(), EmailAddressState.empty);
  });

  test('メールアドレスの利用者情報がない場合にinvalidとなること', () {
    final target = EmailAddressValidator(target: '@google.com');
    expect(target.validate(), EmailAddressState.invalid);
  });

  test('メールアドレスのドメイン情報がない場合にinvalidとなること', () {
    final target = EmailAddressValidator(target: 'user.info@');
    expect(target.validate(), EmailAddressState.invalid);
  });

  test('メールアドレスに日本語が含まれる場合invalidとなること', () {
    final target = EmailAddressValidator(target: 'user.iあnfo@google.com');
    expect(target.validate(), EmailAddressState.invalid);
  });

  test('メールアドレスに正常な場合にvalidとなること', () {
    final target = EmailAddressValidator(target: 'user.info@google.com');
    expect(target.validate(), EmailAddressState.valid);
  });
}