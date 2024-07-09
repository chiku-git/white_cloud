import 'package:white_cloud/importer.dart';

part 'post_form.freezed.dart';

@freezed
abstract class PostForm implements _$PostForm {
  PostForm._();
  factory PostForm({
    required User user,
    required String body,
  }) = _PostForm;

  bool isValid() {
    return body.trim().isNotEmpty;
  }
}