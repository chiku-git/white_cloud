import 'package:white_cloud/importer.dart';

part 'get_replies.freezed.dart';
part 'get_replies.g.dart';

@freezed
class GetRepliesRequest with _$GetRepliesRequest {
  factory GetRepliesRequest({
    required String postId,
    required int page,
  }) = _GetRepliesRequest;

  factory GetRepliesRequest.fromJson(Map<String, dynamic> json)
    => _$GetRepliesRequestFromJson(json);
}

@freezed
class GetRepliesResponse with _$GetRepliesResponse {
  factory GetRepliesResponse({
    required List<PostDigest> replies,
  }) = _GetRepliesResponse;

  factory GetRepliesResponse.fromJson(Map<String, dynamic> json)
    => _$GetRepliesResponseFromJson(json);
}