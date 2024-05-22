import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:white_cloud/importer.dart';

void main() {
  // ================================
  // XCropState Test
  // ================================
  test('現在のXCropStateがinit, newStateがnothingのときcurrentが返る', () {
    const current = XCropState.init;
    expect(current.computeNewState(CropStatus.nothing), current);
  });

  test('現在のXCropStateがinit, newStateがcroppingのときcurrentが返る', () {
    const current = XCropState.init;
    expect(current.computeNewState(CropStatus.cropping), current);
  });

  test('現在のXCropStateがinit, newStateがreadyのときreadyが返る', () {
    const current = XCropState.init;
    expect(current.computeNewState(CropStatus.ready), XCropState.ready);
  });

  test('現在のXCropStateがinit, newStateがloadingのときcurrentが返る', () {
    const current = XCropState.init;
    expect(current.computeNewState(CropStatus.loading), current);
  });

  test('現在のXCropStateがready, newStateがnothingのときcurrentが返る', () {
    const current = XCropState.ready;
    expect(current.computeNewState(CropStatus.nothing), current);
  });

  test('現在のXCropStateがready, newStateがcroppingのときcurrentが返る', () {
    const current = XCropState.ready;
    expect(current.computeNewState(CropStatus.cropping), XCropState.cropping);
  });

  test('現在のXCropStateがready, newStateがreadyのときreadyが返る', () {
    const current = XCropState.ready;
    expect(current.computeNewState(CropStatus.ready), XCropState.ready);
  });

  test('現在のXCropStateがready, newStateがloadingのときcurrentが返る', () {
    const current = XCropState.ready;
    expect(current.computeNewState(CropStatus.loading), current);
  });

  test('現在のXCropStateがcropping, newStateがnothingのときcurrentが返る', () {
    const current = XCropState.cropping;
    expect(current.computeNewState(CropStatus.nothing), current);
  });

  test('現在のXCropStateがcropping, newStateがcroppingのときcurrentが返る', () {
    const current = XCropState.cropping;
    expect(current.computeNewState(CropStatus.cropping), current);
  });

  test('現在のXCropStateがcropping, newStateがreadyのときdoneが返る', () {
    const current = XCropState.cropping;
    expect(current.computeNewState(CropStatus.ready), XCropState.done);
  });

  test('現在のXCropStateがcropping, newStateがloadingのときcurrentが返る', () {
    const current = XCropState.cropping;
    expect(current.computeNewState(CropStatus.loading), current);
  });

  test('現在のXCropStateがdone, newStateがnothingのときcurrentが返る', () {
    const current = XCropState.done;
    expect(current.computeNewState(CropStatus.nothing), current);
  });

  test('現在のXCropStateがdone, newStateがcroppingのときcurrentが返る', () {
    const current = XCropState.done;
    expect(current.computeNewState(CropStatus.cropping), current);
  });

  test('現在のXCropStateがdone, newStateがreadyのときcurrentが返る', () {
    const current = XCropState.done;
    expect(current.computeNewState(CropStatus.ready), current);
  });

  test('現在のXCropStateがdone, newStateがloadingのときcurrentが返る', () {
    const current = XCropState.done;
    expect(current.computeNewState(CropStatus.loading), current);
  });
}