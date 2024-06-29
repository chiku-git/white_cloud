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
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
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
          border: Border.all(
            color: borderColor ?? colorScheme.primary,
            width: borderWidth,
            style: borderStyle,
            strokeAlign: borderStrokeAlign,
          ),
      ),
      child: ClipOval(
        clipper: clipper,
        clipBehavior: circleClipBehavior,
        child: Builder(
          builder: (BuildContext context) => image
        ),
      ),
    );
  }
}

class TappableCirclePhotoFrame extends CirclePhotoFrame {
  final void Function() onTap;
  final void Function()? onDoubleTap;
  final void Function()? onLongPress;
  final void Function(TapDownDetails)? onTapDown;
  final void Function(TapUpDetails)? onTapUp;
  final void Function()? onTapCancel;
  final void Function()? onSecondaryTap;
  final void Function(TapUpDetails)? onSecondaryTapUp;
  final void Function(TapDownDetails)? onSecondaryTapDown;
  final void Function()? onSecondaryTapCancel;
  final void Function(bool)? onHighlightChanged;
  final void Function(bool)? onHover;
  final MouseCursor? mouseCursor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final InteractiveInkFeatureFactory? splashFactory;
  final double? radius;
  final BorderRadius? borderRadius;
  final ShapeBorder? customBorder;
  final bool? enableFeedback;
  final bool excludeFromSemantics;
  final FocusNode? focusNode;
  final bool canRequestFocus;
  final void Function(bool)? onFocusChange;
  final bool autofocus;
  final Duration? hoverDuration;

  const TappableCirclePhotoFrame({
    super.key, 
    required super.image,
    required this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onSecondaryTap,
    this.onSecondaryTapUp,
    this.onSecondaryTapDown,
    this.onSecondaryTapCancel,
    this.onHighlightChanged,
    this.onHover,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.splashFactory,
    this.radius,
    this.borderRadius,
    this.customBorder,
    this.focusNode,
    this.onFocusChange,
    this.hoverDuration,
    this.enableFeedback = true,
    this.excludeFromSemantics = false,
    this.canRequestFocus = false,
    this.autofocus = false,
    super.alignment,
    super.padding,
    super.color,
    super.foregroundDecoration,
    super.diameter,
    super.constraints,
    super.margin,
    super.transform,
    super.transformAlignment,
    super.clipBehavior,
    super.boxShadow,
    super.gradient,
    super.backgroundBlendMode,
    super.shape,
    super.borderColor,
    super.borderWidth,
    super.borderStyle,
    super.borderStrokeAlign,
    super.clipper,
    super.circleClipBehavior,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      onSecondaryTap: onSecondaryTap,
      onSecondaryTapUp: onSecondaryTapUp,
      onSecondaryTapDown: onSecondaryTapDown,
      onSecondaryTapCancel: onSecondaryTapCancel,
      onHighlightChanged: onHighlightChanged,
      onHover: onHover,
      mouseCursor: mouseCursor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      splashFactory: splashFactory,
      radius: radius,
      borderRadius: borderRadius ?? BorderRadius.circular(super.diameter ?? 0),
      customBorder: customBorder,
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      hoverDuration: hoverDuration,
      child: super.build(context),
    );
  }
}