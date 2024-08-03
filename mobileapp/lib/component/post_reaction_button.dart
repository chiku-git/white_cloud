import 'package:white_cloud/importer.dart';

class PostReactionButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final String text;
  final double gap;
  final Color? color;
  final Function() onTap;
  final bool isLoading;
  final double width;
  final double height;

  const PostReactionButton(
      {super.key,
      required this.icon,
      this.iconSize = 20,
      required this.text,
      this.gap = 3,
      required this.onTap,
      this.color,
      this.isLoading = false,
      this.width = 50,
      this.height = 30,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: SizedBox(
        height: height,
        width: width,
        child: _getContent(),
      ),
    );
  }

  Widget _getContent() {
    if (isLoading) {
      final paddingEnd = width - iconSize;
      final paddingVertical = height - iconSize;
      return Padding(
        padding: EdgeInsets.fromLTRB(
            0,
            paddingVertical / 2,
            paddingEnd,
            paddingVertical / 2
        ),
        child: const CircularProgressIndicator(
          strokeWidth: 2,
        ),
      );
    } else {
      return Wrap(
        runAlignment: WrapAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize,
            color: color,
          ),
          Margin.horizontal(gap),
          Text(
            text,
            style: TextStyle(color: color),
          )
        ],
      );
    }
  }
}
