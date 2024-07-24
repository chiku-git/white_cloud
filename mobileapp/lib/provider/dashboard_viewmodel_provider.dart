import 'package:white_cloud/importer.dart';

final dashboardViewModelProvider =
    StateNotifierProvider<DashboardViewModelNotifier, DashboardViewmodel>(
        (ref) => throw UnimplementedError()
    );

class DashboardViewModelNotifier extends StateNotifier<DashboardViewmodel> {
  DashboardViewModelNotifier(super.viewmodel);

  update({User? user, int? bottomNavIndex}) {
    state = state.copyWith(
      user: user ?? state.currentUser,
      bottomNavIndex: bottomNavIndex ?? state.bottomNavIndex,
    );
  }
}
