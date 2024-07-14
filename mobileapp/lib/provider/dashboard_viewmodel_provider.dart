import 'package:white_cloud/importer.dart';

import '../view_model/dashboard_viewmodel.dart';

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
