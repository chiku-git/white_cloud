import 'package:white_cloud/importer.dart';

class JsMessageChannel {
  final String name;
  final Function(JavaScriptMessage) onMessageReceived;

  JsMessageChannel({required this.name, required this.onMessageReceived});
}