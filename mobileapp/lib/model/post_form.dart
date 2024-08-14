import 'package:white_cloud/importer.dart';

part 'post_form.freezed.dart';

@freezed
abstract class PostForm implements _$PostForm {
  PostForm._();
  factory PostForm({
    required User user,
    required String body,
    PostDigest? replyTo,
  }) = _PostForm;

  factory PostForm.empty({required User user}) => PostForm(user: user, body: "");

  bool isValid() {
    return body.trim().isNotEmpty;
  }

  bool isReplying() => replyTo != null;
}