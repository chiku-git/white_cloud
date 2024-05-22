
import 'package:crop_your_image/crop_your_image.dart';

enum XCropState {
  init,
  ready,
  cropping,
  done
  ;

  bool get isInit => this == init;
  bool get isReady => this == ready;
  bool get isCropping => this == cropping;
  bool get isDone => this == done;
  bool get isWorking => isInit || isCropping;
  bool get isIdle => !isWorking;

  XCropState computeNewState(CropStatus newState) {
    switch(this) {
      case init:
        return newState == CropStatus.ready ? ready : this;
      case ready:
        return newState == CropStatus.cropping ? cropping : this;
      case cropping:
        return newState == CropStatus.ready ? done : this;
      case done:
        return this;
      default:
        return this;
    }
  }
}

enum ConfirmDialogState {
  positive,
  negative,
  neutral,
  ;

  bool get isPositive => this == positive;
  bool get isNegative => this == negative;
  bool get isNeutral  => this == neutral;
}