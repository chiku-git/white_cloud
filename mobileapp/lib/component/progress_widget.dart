import 'dart:math';
import 'package:white_cloud/importer.dart';

class ProgressWidget extends StatefulWidget  {
  final double size;
  final int millis;
  final Color? color;
  const ProgressWidget({
    super.key,
    this.size = 65,
    this.millis = 1000,
    this.color
  });

  @override
  State<StatefulWidget> createState() => _ProgressState();
}

class _ProgressState extends State<ProgressWidget>
    with SingleTickerProviderStateMixin, ThemeMixin {

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // リピートと間隔（duration）は#buildで設定
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller
                    ..duration = Duration(milliseconds: widget.millis)
                    ..repeat(),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2 * pi,
            child: SVGLoader(
              fileName: 'reload',
              width: widget.size,
              height: widget.size,
              colorFilter: ColorFilter.mode(
                  widget.color ?? getColorScheme(context).primary,
                  BlendMode.srcIn
              )
            ).load(),
          );
        },
      ),
    );
  }
}