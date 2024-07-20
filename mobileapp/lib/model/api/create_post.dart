import 'package:white_cloud/importer.dart';
part 'create_post.freezed.dart';
part 'create_post.g.dart';

@freezed
class CreatePostRequest with _$CreatePostRequest {
  factory CreatePostRequest({
    required String body,
  }) = _CreatePostRequest;

  factory CreatePostRequest.fromJson(Map<String, dynamic> json)
    => _$CreatePostRequestFromJson(json);
}

@freezed
class CreatePostResponse with _$CreatePostResponse {
  factory CreatePostResponse({
    required PostInfo post,
  }) = _CreatePostResponse;

  factory CreatePostResponse.fromJson(Map<String, dynamic> json)
    => _$CreatePostResponseFromJson(json);
}