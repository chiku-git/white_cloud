import 'package:white_cloud/importer.dart';

class CirclePhotoFrame extends StatelessWidget with ThemeMixin {
  // container
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Decoration? foregroundDecoration;
  final double? diameter;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;
  // decoration
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final BlendMode? backgroundBlendMode;
  final BoxShape? shape;
  // border
  final Color? borderColor;
  final double borderWidth;
  final BorderStyle borderStyle;
  final double borderStrokeAlign;
  // image
  final Widget image;
  // clipOval
  final CustomClipper<Rect>? clipper;
  final Clip circleClipBehavior;
  // listener
  final Function()? onTap;

  const CirclePhotoFrame({
    super.key,
    this.alignment,
    this.padding,
    this.color,
    this.foregroundDecoration,
    this.diameter,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
    // decoration
    this.boxShadow,
    this.gradient,
    this.backgroundBlendMode,
    this.shape,
    // border
    this.borderColor,
    this.borderWidth = 1.0,
    this.borderStyle = BorderStyle.solid,
    this.borderStrokeAlign = BorderSide.strokeAlignInside,
    // image
    required this.image,
    // clipOval
    this.clipper,
    this.circleClipBehavior = Clip.antiAlias,
    // listener
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: alignment,
        padding: padding,
        foregroundDecoration: foregroundDecoration,
        width: diameter,
        height: diameter,
        constraints: constraints,
        margin: margin,
        transform: transform,
        transformAlignment: transformAlignment,
        clipBehavior: clipBehavior,
        decoration: BoxDecoration(
            color: color,
            boxShadow: boxShadow,
            gradient: gradient,
            backgroundBlendMode: backgroundBlendMode,
            shape: shape ?? BoxShape.circle,
            border: borderWidth != 0
                ? Border.all(
              color: borderColor ?? colorScheme.primary,
              width: borderWidth,
              style: borderStyle,
              strokeAlign: borderStrokeAlign,
            )
                : null,
        ),
        child: ClipOval(
          clipper: clipper,
          clipBehavior: circleClipBehavior,
          child: Builder(
            builder: (BuildContext context) => image
          ),
        ),
      ),
    );
  }
}

class UserImageIcon extends CirclePhotoFrame {
  UserImageIcon({
    super.key,
    required String? userImage,
    super.diameter = 25,
    super.borderWidth = 0.0,
    super.boxShadow,
    Function()? onTap,
  }): super(
    image: userImage != null
        ? Image.network(
          "${Config.localhost}$userImage",
          fit: BoxFit.cover,
        )
        : const PlaceHolderPersonImage(),
  );
}