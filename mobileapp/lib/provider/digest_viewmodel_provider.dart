import 'package:white_cloud/importer.dart';

final digestViewModelProvider =
    StateNotifierProvider<DigestViewModelNotifier, DigestViewModel>(
        (ref) => throw UnimplementedError()
    );

class DigestViewModelNotifier extends StateNotifier<DigestViewModel> {
  DigestViewModelNotifier(super.viewmodel);


}
