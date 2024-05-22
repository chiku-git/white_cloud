import 'package:flutter_test/flutter_test.dart';
import 'package:white_cloud/importer.dart';

void main() {
  // ========================================================
  // #isNull
  // ========================================================
  test('valueがnullであればtrueを返すこと', () {
    final actual = StringWrapper(null).isNull();
    expect(actual, true);
  });

  test('valueが空文字ならばfalseを返すこと', () {
    final actual = StringWrapper("").isNull();
    expect(actual, false);
  });

  test('valueが文字ならばfalseを返すこと', () {
    final actual = StringWrapper("a").isNull();
    expect(actual, false);
  });

  // ========================================================
  // #isNotNull
  // ========================================================
  test('valueがnullであればfalseを返すこと', () {
    final actual = StringWrapper(null).isNotNull();
    expect(actual, false);
  });

  test('valueが空文字ならばtrueを返すこと', () {
    final actual = StringWrapper("").isNotNull();
    expect(actual, true);
  });

  test('valueが文字ならばtrueを返すこと', () {
    final actual = StringWrapper("a").isNotNull();
    expect(actual, true);
  });

  // ========================================================
  // #isNullOrEmpty
  // ========================================================
  test('valueがnullであればtrueを返すこと', () {
    final actual = StringWrapper(null).isNullOrEmpty();
    expect(actual, true);
  });

  test('valueが空文字ならばtrueを返すこと', () {
    final actual = StringWrapper("").isNullOrEmpty();
    expect(actual, true);
  });

  test('valueが文字ならばfalseを返すこと', () {
    final actual = StringWrapper("a").isNullOrEmpty();
    expect(actual, false);
  });

  // ========================================================
  // #isNotNullOrEmpty
  // ========================================================
  test('valueがnullであればfalseを返すこと', () {
    final actual = StringWrapper(null).isNotNullOrEmpty();
    expect(actual, false);
  });

  test('valueが空文字ならばfalseを返すこと', () {
    final actual = StringWrapper("").isNotNullOrEmpty();
    expect(actual, false);
  });

  test('valueが文字ならばtrueを返すこと', () {
    final actual = StringWrapper("a").isNotNullOrEmpty();
    expect(actual, true);
  });

  // ========================================================
  // #contains
  // ========================================================
  test('valueがnullであればfalseを返すこと', () {
    final actual = StringWrapper(null).contains("");
    expect(actual, false);
  });

  test('valueが空文字、引数が""<大文字区別あり>ならばtrueを返すこと', () {
    final actual = StringWrapper("").contains("");
    expect(actual, true);
  });

  test('valueが空文字、引数が""<大文字区別なし>ならばtrueを返すこと', () {
    final actual = StringWrapper("").contains("", ignoreCase: true);
    expect(actual, true);
  });

  test('valueが空文字、引数が"a"ならばfalseを返すこと', () {
    final actual = StringWrapper("").contains("a");
    expect(actual, false);
  });

  test('valueが空文字、引数が"A"ならばfalseを返すこと', () {
    final actual = StringWrapper("").contains("a", ignoreCase: true);
    expect(actual, false);
  });

  test('valueが文字、引数が同じならばtrueを返すこと', () {
    final actual = StringWrapper("a").contains("a");
    expect(actual, true);
  });

  test('valueが文字、引数が同じ(大文字）<大文字区別あり>ならばfalseを返すこと', () {
    final actual = StringWrapper("a").contains("A");
    expect(actual, false);
  });

  test('valueが文字、引数が同じ(大文字）<大文字区別なし>ならばfalseを返すこと', () {
    final actual = StringWrapper("a").contains("A", ignoreCase: true);
    expect(actual, true);
  });

  test('valueが日本語、引数が同じ<大文字区別あり>ならばtrueを返すこと', () {
    final actual = StringWrapper("あいうえお").contains("あいうえお");
    expect(actual, true);
  });

  test('valueが日本語、引数が同じ<大文字区別なし>ならばtrueを返すこと', () {
    final actual = StringWrapper("あいうえお").contains("あいうえお", ignoreCase: true);
    expect(actual, true);
  });

  test('valueが日本語、引数が異なる<大文字区別あり>ならばfalseを返すこと', () {
    final actual = StringWrapper("あいうえお").contains("あいえお");
    expect(actual, false);
  });

  test('valueが日本語、引数が異なる<大文字区別あり>ならばfalseを返すこと', () {
    final actual = StringWrapper("あいうえお").contains("あいえお", ignoreCase: true);
    expect(actual, false);
  });

  test('valueが混在、引数が同じ<大文字区別なし>ならばtrueを返すこと', () {
    final actual = StringWrapper("あiうeお　").contains("あiうeお　");
    expect(actual, true);
  });

  test('valueが混在、引数が同じ<大文字区別あり>ならばtrueを返すこと', () {
    final actual = StringWrapper("あiうeお　").contains("あiうeお　", ignoreCase: true);
    expect(actual, true);
  });

  test('valueが混在、引数が異なる<大文字区別なし>ならばfalseを返すこと', () {
    final actual = StringWrapper("あiうeお　").contains("あIうEお　");
    expect(actual, false);
  });

  test('valueが混在、引数が異なる<大文字区別なし>ならばtrueを返すこと', () {
    final actual = StringWrapper("あiうeお　").contains("あIうEお　", ignoreCase: true);
    expect(actual, true);
  });

  test('valueが混在、引数が異なる<大文字区別あり>ならばtrueを返すこと', () {
    final actual = StringWrapper("あIうEお　").contains("あiうeお　");
    expect(actual, false);
  });

  test('valueが混在、引数が異なる<大文字区別なし>ならばtrueを返すこと', () {
    final actual = StringWrapper("あIうEお　").contains("あiうeお　", ignoreCase: true);
    expect(actual, true);
  });
}