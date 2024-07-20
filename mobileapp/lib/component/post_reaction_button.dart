import 'package:white_cloud/importer.dart';

class PostReactionButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final String text;
  final double gap;
  final Function() onTap;
  late final EdgeInsetsGeometry padding;

  PostReactionButton({
    super.key,
    required this.icon,
    this.iconSize = 20,
    required this.text,
    this.gap = 3,
    EdgeInsetsGeometry? padding,
    required this.onTap,
    }) {
    this.padding = padding ?? const EdgeInsets.fromLTRB(0, 5, 25, 5);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Wrap(
          children: [
            Icon(icon,
                size: iconSize),
            Margin.horizontal(gap),
            Text(text)
          ],
        ),
      ),
    );
  }
}