import 'package:white_cloud/importer.dart';

class Margin {
  const Margin._();

  static SizedBox vertical(double size) {
    return SizedBox(height: size,);
  }

  static SizedBox horizontal(double size) {
    return SizedBox(width: size,);
  }
}