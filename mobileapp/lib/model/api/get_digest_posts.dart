import 'package:white_cloud/importer.dart';

part 'get_digest_posts.freezed.dart';
part 'get_digest_posts.g.dart';

@freezed
class GetDigestPostsRequest with _$GetDigestPostsRequest {
  factory GetDigestPostsRequest({
    required int page,
  }) = _GetDigestPostsRequest;

  factory GetDigestPostsRequest.fromJson(Map<String, dynamic> json)
    => _$GetDigestPostsRequestFromJson(json);
}

@freezed
class GetDigestPostsResponse with _$GetDigestPostsResponse {
  factory GetDigestPostsResponse({
    required List<PostDigest> digests,
  }) = _GetDigestPostsResponse;

  factory GetDigestPostsResponse.fromJson(Map<String, dynamic> json)
    => _$GetDigestPostsResponseFromJson(json);
}