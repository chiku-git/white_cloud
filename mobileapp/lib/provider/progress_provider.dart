import 'package:white_cloud/importer.dart';

/// 進捗を提供する
final progressProvider = StateNotifierProvider<ProgressNotifier, double>(
        (ref) => ProgressNotifier()
);

class ProgressNotifier extends StateNotifier<double> {
  static const _min = 0.0;

  ProgressNotifier(): super(_min);

  /// 進捗を更新する
  update(double progress) => state = progress;

  /// 進捗を初期化する
  init() => state = _min;
}