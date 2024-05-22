import 'package:white_cloud/importer.dart';

class ConfirmDialog extends StatelessWidget {
  final Widget? icon;
  final EdgeInsetsGeometry? iconPadding;
  final Color? iconColor;
  final String title;
  final EdgeInsetsGeometry? titlePadding;
  final String content;
  final EdgeInsetsGeometry? contentPadding;
  final Map<String, ConfirmDialogState> options;
  final EdgeInsetsGeometry? actionsPadding;
  final MainAxisAlignment? actionsAlignment;
  final OverflowBarAlignment? actionsOverflowAlignment;
  final VerticalDirection? actionsOverflowDirection;
  final double? actionsOverflowButtonSpacing;
  final EdgeInsetsGeometry? buttonPadding;
  final Color? backgroundColor;
  final double? elevation;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final String? semanticLabel;
  final EdgeInsets? insetPadding;
  final Clip clipBehavior;
  final ShapeBorder? shape;
  final AlignmentGeometry? alignment;
  final bool scrollable;

  const ConfirmDialog({
    super.key,
    this.icon,
    this.iconPadding,
    this.iconColor,
    this.title = "",
    this.titlePadding,
    this.content = "",
    this.contentPadding,
    required this.options,
    this.actionsPadding,
    this.actionsAlignment,
    this.actionsOverflowAlignment,
    this.actionsOverflowDirection,
    this.actionsOverflowButtonSpacing,
    this.buttonPadding,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.semanticLabel,
    this.insetPadding,
    this.clipBehavior = Clip.none,
    this.shape,
    this.alignment,
    this.scrollable = false
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        icon: icon,
        iconPadding: iconPadding,
        iconColor: iconColor,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        ),
        titlePadding: _getTitleContentPadding(titlePadding, title),
        content: Text(
          content,
          style: const TextStyle(
              fontSize: 16
          ),
        ),
        contentPadding: _getTitleContentPadding(contentPadding, content),
        actions: _getActions(context),
        actionsPadding: actionsPadding,
        actionsAlignment: actionsAlignment,
        actionsOverflowAlignment: actionsOverflowAlignment,
        actionsOverflowDirection: actionsOverflowDirection,
        actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
        buttonPadding: buttonPadding,
        backgroundColor: backgroundColor,
        elevation: elevation,
        shadowColor: shadowColor,
        surfaceTintColor: surfaceTintColor,
        semanticLabel: semanticLabel,
        insetPadding: insetPadding ?? const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        clipBehavior: clipBehavior,
        shape: shape ?? RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        alignment: alignment,
        scrollable: scrollable
    );
  }

  EdgeInsetsGeometry? _getTitleContentPadding(
      EdgeInsetsGeometry? padding, String text)
        => padding ?? (text.isEmpty ? EdgeInsets.zero : null);

  List<Widget> _getActions(BuildContext context) {
    final List<Widget> newActions = [];
    for(final option in options.entries) {
      newActions.add(
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(option.value);
          },
          child: Text(
            option.key,
            style: const TextStyle(
              fontSize: 16
            ),
          ),
        )
      );
    }
    return newActions;
  }
}
