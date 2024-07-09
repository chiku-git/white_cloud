import 'package:white_cloud/importer.dart';

part 'post.freezed.dart';
part 'post.g.dart';

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
    required PostDetail post,
  }) = _CreatePostResponse;

  factory CreatePostResponse.fromJson(Map<String, dynamic> json)
    => _$CreatePostResponseFromJson(json);
}

@freezed
class PostDetail with _$PostDetail {
  factory PostDetail({
    required String id,
    required String createdAt,
  }) = _PostDetail;

  factory PostDetail.fromJson(Map<String, dynamic> json)
  => _$PostDetailFromJson(json);
}