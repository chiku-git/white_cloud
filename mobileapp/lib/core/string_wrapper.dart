class StringWrapper {
  final String? value;

  StringWrapper(this.value);

  /// nullならtrueを返す
  bool isNull() => value == null;

  /// nullでないならtrueを返す
  bool isNotNull() => !isNull();

  /// null または ""なら trueを返す
  bool isNullOrEmpty() => isNull() || value!.isEmpty;

  /// null または ""なら falseを返す
  bool isNotNullOrEmpty() => !isNullOrEmpty();

  /// 文字が含まれるか確認する。nullでない、かつ文字が含まれている場合はtrueを返す
  bool contains(String text, {bool ignoreCase = false}) {
    final other = StringWrapper(text);
    if (isNull() || other.isNull()) return false;

    return _contains(value!, text, ignoreCase) || _contains(text, value!, ignoreCase);
  }

  /// 文字が含まれるか確認する。nullでない、かつ文字が含まれている場合はtrueを返す
  bool _contains(String text, String other, bool ignoreCase) {
    if (text.isNotEmpty && other.isEmpty) return false;

    return text.contains(ignoreCase ? other.toLowerCase() : other);
  }

  String embed(String text) {
    return value?.replaceFirst("%s", text) ?? "";
  }
}