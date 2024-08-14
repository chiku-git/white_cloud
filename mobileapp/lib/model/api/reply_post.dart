import 'package:white_cloud/importer.dart';

part 'reply_post.freezed.dart';
part 'reply_post.g.dart';

@freezed
class ReplyPostRequest with _$ReplyPostRequest {
  factory ReplyPostRequest({
    required String replyToId,
    required String body,
  }) = _ReplyPostRequest;

  factory ReplyPostRequest.fromJson(Map<String, dynamic> json)
    => _$ReplyPostRequestFromJson(json);
}

@freezed
class ReplyPostResponse with _$ReplyPostResponse {
  factory ReplyPostResponse({
    required PostDigest replyTo,
    required PostDigest reply,
  }) = _ReplyPostResponse;

  factory ReplyPostResponse.fromJson(Map<String, dynamic> json)
    => _$ReplyPostResponseFromJson(json);
}