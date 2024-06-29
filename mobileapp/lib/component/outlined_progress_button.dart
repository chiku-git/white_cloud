import 'package:white_cloud/importer.dart';

class OutlinedProgressButton extends StatelessWidget with ThemeMixin {
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final Size? fixedSize;
  final Size? maximumSize;
  final BorderSide? side;
  final MouseCursor? enabledMouseCursor;
  final MouseCursor? disabledMouseCursor;
  final VisualDensity? visualDensity;
  final MaterialTapTargetSize? tapTargetSize;
  final Duration? animationDuration;
  final bool? enableFeedback;
  final AlignmentGeometry? alignment;
  final InteractiveInkFeatureFactory? splashFactory;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final Widget child;
  final ButtonState state;
  late final Size progressSize;

  OutlinedProgressButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.foregroundColor,
    this.backgroundColor,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.shadowColor,
    this.surfaceTintColor,
    this.elevation,
    this.padding,
    this.minimumSize,
    this.fixedSize,
    this.maximumSize,
    this.side,
    this.enabledMouseCursor,
    this.disabledMouseCursor,
    this.visualDensity,
    this.tapTargetSize,
    this.animationDuration,
    this.enableFeedback,
    this.alignment,
    this.splashFactory,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.state = ButtonState.idle,
    Size? progressSize,
  }) {
    this.progressSize = progressSize ?? const Size(22, 22);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkTheme(context);

    return OutlinedButton(
      key: super.key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: OutlinedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        disabledForegroundColor: disabledBackgroundColor,
        disabledBackgroundColor: disabledForegroundColor,
        shadowColor: shadowColor,
        surfaceTintColor: surfaceTintColor,
        elevation: elevation,
        padding: state == ButtonState.idle ? padding : EdgeInsets.zero,
        minimumSize: minimumSize,
        fixedSize: fixedSize,
        maximumSize: maximumSize,
        side: side,
        enabledMouseCursor: enabledMouseCursor,
        disabledMouseCursor: disabledMouseCursor,
        visualDensity: visualDensity,
        tapTargetSize: tapTargetSize,
        animationDuration: animationDuration,
        enableFeedback: enableFeedback,
        alignment: alignment,
        splashFactory: splashFactory,
      ),
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      child: () {
        final iconSize = progressSize.height + 7.0;
        switch (state) {
          case ButtonState.idle:
            return child;
          case ButtonState.loading:
            return SizedBox(
                height: progressSize.height,
                width: progressSize.width,
                child: const CircularProgressIndicator(
                  strokeWidth: 2.5,
                ));
          case ButtonState.success:
            return Icon(
              size: iconSize,
              color: isDark
                  ? AppColors.darkSuccessGreen
                  : AppColors.lightSuccessGreen,
              Icons.check,
            );
          case ButtonState.failed:
            return Icon(
              size: iconSize,
              color: getColorScheme(context).error,
              Icons.close,
            );
        }
      }(),
    );
  }
}

enum ButtonState {
  idle,
  loading,
  success,
  failed,
  ;
}
