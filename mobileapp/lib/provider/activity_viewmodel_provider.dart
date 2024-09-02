import 'package:white_cloud/importer.dart';

final activityViewModelProvider =
    StateNotifierProvider<ActivityViewModelNotifier, ActivityViewmodel>(
        (ref) => throw UnimplementedError()
    );

class ActivityViewModelNotifier extends StateNotifier<ActivityViewmodel> {
  ActivityViewModelNotifier(super.viewmodel);

  update({required ActivityType type}) {
    state = state.copyWith(
        model: state.model.copyWith(
          currentType: type
        )
    );
  }
}
