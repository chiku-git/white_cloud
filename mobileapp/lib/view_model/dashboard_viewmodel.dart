import 'package:white_cloud/importer.dart';

@immutable
class DashboardViewmodel {
  DashboardViewmodel({
    required User user,
    this.bottomNavIndex = 0
  }) {
    currentUser = user;
  }

  /// ログイン中（操作中）ユーザー
  late final User currentUser;
  /// ボトムナビゲーションのindex
  final int bottomNavIndex;

  DashboardViewmodel copyWith({required User user, required int bottomNavIndex}) {
    return DashboardViewmodel(
      user: user,
      bottomNavIndex: bottomNavIndex
    );
  }
}