import 'package:white_cloud/importer.dart';

part 'search_posts.freezed.dart';
part 'search_posts.g.dart';

@freezed
class SearchPostsRequest with _$SearchPostsRequest {
  factory SearchPostsRequest({
    required String keyword,
    required int page,
  }) = _SearchPostsRequest;

  factory SearchPostsRequest.fromJson(Map<String, dynamic> json)
    => _$SearchPostsRequestFromJson(json);
}

@freezed
class SearchPostsResponse with _$SearchPostsResponse {
  factory SearchPostsResponse({
    required List<PostDigest> digests,
  }) = _SearchPostsResponse;

  factory SearchPostsResponse.fromJson(Map<String, dynamic> json)
    => _$SearchPostsResponseFromJson(json);
}