import 'package:flutter/material.dart';
import 'package:white_cloud/importer.dart';

mixin class ThemeMixin {
  /// テーマを取得
  ThemeData getTheme(BuildContext context) => Theme.of(context);

  /// カラースキーマを取得
  ColorScheme getColorScheme(BuildContext context) {
    return getTheme(context).colorScheme;
  }

  /// 現在のテーマがlightならtrueを返す
  bool isLightTheme(BuildContext context) {
    return getTheme(context).brightness == Brightness.light;
  }

  /// 現在のテーマがdarkならtrueを返す
  bool isDarkTheme(BuildContext context) => !isLightTheme(context);
}