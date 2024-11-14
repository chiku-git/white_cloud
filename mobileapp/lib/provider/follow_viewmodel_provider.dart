import 'package:white_cloud/importer.dart';

final followPageViewModelProvider =
StateNotifierProvider<FollowViewModelNotifier, FollowPageViewModel>(
        (ref) => throw UnimplementedError()
);

class FollowViewModelNotifier extends StateNotifier<FollowPageViewModel> {
  FollowViewModelNotifier(super.state);
}