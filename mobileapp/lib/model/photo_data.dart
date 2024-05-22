import 'package:white_cloud/importer.dart';

class PhotoData {
  final Uint8List bytes;

  const PhotoData(this.bytes);

  String get base64 => const Base64Encoder().convert(bytes);

  @override
  String toString() {
    return 'Photo{bytes: $base64}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhotoData &&
          runtimeType == other.runtimeType &&
          bytes == other.bytes;

  @override
  int get hashCode => bytes.hashCode;
}