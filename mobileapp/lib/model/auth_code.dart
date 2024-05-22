
class AuthCode {
  late int _length;
  late List<String> _digits;
  String get value => _digits.join();

  AuthCode({required int length}) {
    _length = length;
    _digits = List.generate(length, (_) => "");
  }

  set(int idx, String digit) {
    _digits[idx] = digit;
  }

  clear(int idx) => set(idx, "");

  bool isFilled() => value.length == _length;
}