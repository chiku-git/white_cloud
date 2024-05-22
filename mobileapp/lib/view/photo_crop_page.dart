import 'package:crop_your_image/crop_your_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:white_cloud/importer.dart';

class PhotoCropPage extends ConsumerWidget {
  static Future<Uint8List?> pickAndTrim(NavigatorState state) async {
    final source = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (source != null && source.path.isNotEmpty) {
      return await trim(state, File(source.path));
    } else {
      return null;
    }
  }

  static Future<Uint8List?> trim(NavigatorState state, File image) async {
    final binary = await state.pushNamed(path, arguments: image);
    return binary as Uint8List?;
  }

  static const String path = '/photo-crop/';
  final File photo;

  const PhotoCropPage({super.key, required this.photo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: _Body(photo: photo),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  final File photo;
  const _Body({required this.photo});

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
      future: widget.photo.readAsBytes(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }

        return Stack(
          alignment: Alignment.center,
          children: [
            _CroppingWidget(
                controller: _controller,
                image: snapshot.data
            ),
            _SubmitCroppingBtnWidget(
                controller: _controller
            ),
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
    final colorScheme = state.isInit ? getColorScheme(context) : darkColorScheme;

    return Visibility(
        visible: state.isWorking,
        child: ProgressWidget(
          color: colorScheme.primary,
        )
    );
  }
}


class _CroppingWidget extends ConsumerWidget with ThemeMixin {
  final CropController controller;
  final Uint8List image;

  const _CroppingWidget({required this.controller, required this.image});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Crop(
      controller: controller,
      image: image,
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
    final colorScheme = state.isInit ? getColorScheme(context) : darkColorScheme;

    return Positioned(
      bottom: 20,
      child: OutlinedButton(
        onPressed: isEnabled ? () {
          controller.crop();
        } : null,
        style: OutlinedButton.styleFrom(
            side: isEnabled ? BorderSide(
                color: colorScheme.primary
            ) : null
        ),
        child: Text(
          Strings.trimming,
          style: TextStyle(
              fontSize: 16,
              color: isEnabled ? colorScheme.primary : null
          ),
        ),
      ),
    );
  }
}
