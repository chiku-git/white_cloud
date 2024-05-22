import 'package:crop_your_image/crop_your_image.dart';
import 'package:white_cloud/importer.dart';

final photoCropStateProvider =
  StateNotifierProvider.autoDispose<UserPhotoCropState, XCropState>((ref) =>
      UserPhotoCropState()
  );

class UserPhotoCropState extends StateNotifier<XCropState> {
  UserPhotoCropState(): super(XCropState.init);

  update({ required CropStatus newState }) {
    state = state.computeNewState(newState);
  }
}