import 'package:white_cloud/importer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart' show rootBundle;

/// アセットをロードする
abstract class AssetsLoader<T> {
  final String fileName;
  AssetsLoader({required this.fileName});

  T load();
}

/// 画像をロードする
abstract class ImageLoader extends AssetsLoader<Widget> {
  ImageLoader({required super.fileName});
}

/// テキストデータをロードする
abstract class TextLoader extends AssetsLoader<Future<String>> {
  TextLoader({required super.fileName});
}

/// SVGをロードする
class SVGLoader extends ImageLoader {
  final Key? key;
  final bool matchTextDirection;
  final AssetBundle? bundle;
  final String? package;
  final double? width;
  final double? height;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final bool allowDrawingOutsideViewBox;
  final Widget Function(BuildContext)? placeholderBuilder;
  final String? semanticsLabel;
  final bool excludeFromSemantics;
  final Clip clipBehavior;
  final SvgTheme? theme;
  final ColorFilter? colorFilter;

  SVGLoader({
    required super.fileName,
    this.key,
    this.matchTextDirection = false,
    this.bundle,
    this.package,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.allowDrawingOutsideViewBox = false,
    this.placeholderBuilder,
    this.semanticsLabel,
    this.excludeFromSemantics = false,
    this.clipBehavior = Clip.hardEdge,
    this.theme,
    this.colorFilter,
  });

  @override
  SvgPicture load() {
    return SvgPicture.asset(
      'assets/images/$fileName.svg',
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      theme: theme,
      colorFilter: colorFilter,
    );
  }
}

/// JavaScriptをロードする
class JsLoader extends TextLoader {
  JsLoader({required super.fileName});

  @override
  Future<String> load() async {
    return await rootBundle.loadString("assets/js/$fileName.js");
  }

  loadThen(Function(String) callback) {
    load().then((js) => callback.call(js));
  }
}