import 'package:white_cloud/importer.dart';

class PlaceHolderPersonImage extends StatelessWidget {
  final double? size;
  const PlaceHolderPersonImage({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return SVGLoader(
      fileName: 'person',
      width: size,
      height: size,
      fit: BoxFit.cover
    ).load();
  }
}
