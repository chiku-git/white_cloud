import 'package:crop_your_image/crop_your_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:white_cloud/importer.dart';
import 'package:mime/mime.dart';

class ImageCropPage extends ConsumerWidget {
  static Future<ImageData?> pickAndTrim(NavigatorState state) async {
    final source = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (source != null && lookupMimeType(source.path) != null && source.path.isNotEmpty) {
      final bytes = await trim(state, File(source.path));
      return ImageData(
        fileName: source.name,
        mimeType: lookupMimeType(source.path)!,
        bytes: bytes,
      );
    } else {
      return null;
    }
  }

  static Future<Uint8List?> trim(NavigatorState state, File image) async {
    return await state.pushNamed(path, arguments: image) as Uint8List?;
  }

  static const String path = '/photo-crop/';
  final File image;

  const ImageCropPage({super.key, required this.image});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: _Body(image: image),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  final File image;
  const _Body({required this.image});

  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_Body> with ThemeMixin {
  late CropController _controller;

  @override
  void initState() {
    _controller = CropController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.image.readAsBytes(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }

        return Stack(
          alignment: Alignment.center,
          children: [
            _CroppingWidget(controller: _controller, bytes: snapshot.data),
            _SubmitCroppingBtnWidget(controller: _controller),
            const _LoadingWidget()
          ],
        );
      },
    );
  }
}

class _LoadingWidget extends ConsumerWidget with ThemeMixin {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    XCropState state = ref.watch(photoCropStateProvider);
    final colorScheme =
        state.isInit ? getColorScheme(context) : darkColorScheme;

    return Visibility(
        visible: state.isWorking,
        child: ProgressWidget(
          color: colorScheme.primary,
        ));
  }
}

class _CroppingWidget extends ConsumerWidget with ThemeMixin {
  final CropController controller;
  final Uint8List bytes;

  const _CroppingWidget({required this.controller, required this.bytes});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Crop(
      controller: controller,
      image: bytes,
      baseColor: getColorScheme(context).onTertiary,
      maskColor: Colors.black.withOpacity(0.75),
      cornerDotBuilder: (size, edgeAlignment) {
        return const DotControl(color: Colors.transparent);
      },
      interactive: true,
      initialSize: 0.85,
      withCircleUi: true,
      onCropped: (bytes) {
        Navigator.of(context).pop(bytes);
      },
      onStatusChanged: (states) {
        ref.read(photoCropStateProvider.notifier).update(newState: states);
      },
    );
  }
}

class _SubmitCroppingBtnWidget extends ConsumerWidget with ThemeMixin {
  final CropController controller;

  const _SubmitCroppingBtnWidget({required this.controller});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(photoCropStateProvider);
    final isEnabled = state.isReady;
    final colorScheme =
        state.isInit ? getColorScheme(context) : darkColorScheme;

    return Positioned(
      bottom: 20,
      child: OutlinedButton(
        onPressed: isEnabled
            ? () => controller.crop()
            : null,
        style: OutlinedButton.styleFrom(
            side: isEnabled ? BorderSide(color: colorScheme.primary) : null),
        child: Text(
          Strings.trimming,
          style: TextStyle(
              fontSize: 16, color: isEnabled ? colorScheme.primary : null),
        ),
      ),
    );
  }
}

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

  XCropState computeNewState(CropStatus status) {
    switch(this) {
      case init:
        return status == CropStatus.ready ? ready : this;
      case ready:
        return status == CropStatus.cropping ? cropping : this;
      case cropping:
        return status == CropStatus.ready ? done : this;
      case done:
        return this;
      default:
        return this;
    }
  }
}