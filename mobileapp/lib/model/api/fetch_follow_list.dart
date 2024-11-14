import 'package:white_cloud/importer.dart';

part 'fetch_follow_list.freezed.dart';
part 'fetch_follow_list.g.dart';

@freezed
class FetchFollowListRequest with _$FetchFollowListRequest {
  factory FetchFollowListRequest({
    required String userId,
    required int page,
  }) = _FetchFollowListRequest;

  factory FetchFollowListRequest.fromJson(Map<String, dynamic> json)
    => _$FetchFollowListRequestFromJson(json);
}

@freezed
class FetchFollowersResponse with _$FetchFollowersResponse {
  factory FetchFollowersResponse({
    required List<UserMiniInfo> followers,
  }) = _FetchFollowersResponse;

  factory FetchFollowersResponse.fromJson(Map<String, dynamic> json)
    => _$FetchFollowersResponseFromJson(json);
}

@freezed
class FetchFollowingResponse with _$FetchFollowingResponse {
  factory FetchFollowingResponse({
    required List<UserMiniInfo> following,
  }) = _FetchFollowingResponse;

  factory FetchFollowingResponse.fromJson(Map<String, dynamic> json)
  => _$FetchFollowingResponseFromJson(json);
}