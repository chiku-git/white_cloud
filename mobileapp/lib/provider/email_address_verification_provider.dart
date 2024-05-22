import 'package:white_cloud/importer.dart';

class EmailAddressAuthCodeNotifier extends ValueNotifier<AuthCode> {
  EmailAddressAuthCodeNotifier(int length): super(AuthCode(length: length));

  put(int idx, String digit) {
    value.set(idx, digit);
    notifyListeners();
  }

  clear(int idx) {
    value.clear(idx);
    notifyListeners();
  }
}