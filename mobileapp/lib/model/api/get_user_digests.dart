import 'package:white_cloud/importer.dart';

part 'get_user_digests.freezed.dart';
part 'get_user_digests.g.dart';

@freezed
class GetUserDigestsRequest with _$GetUserDigestsRequest {
  factory GetUserDigestsRequest({
    required int page,
    required String userId,
  }) = _GetUserDigestsRequest;

  factory GetUserDigestsRequest.fromJson(Map<String, dynamic> json)
    => _$GetUserDigestsRequestFromJson(json);
}

@freezed
class GetUserDigestsResponse with _$GetUserDigestsResponse {
  factory GetUserDigestsResponse({
    required List<PostDigest> digests,
  }) = _GetUserDigestsResponse;

  factory GetUserDigestsResponse.fromJson(Map<String, dynamic> json)
    => _$GetUserDigestsResponseFromJson(json);
}