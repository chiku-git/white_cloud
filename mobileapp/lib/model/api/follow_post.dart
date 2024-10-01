import 'package:white_cloud/importer.dart';

part 'follow_post.freezed.dart';
part 'follow_post.g.dart';

@freezed
class FollowRequest with _$FollowRequest {
  factory FollowRequest({
    required String userId,
  }) = _FollowRequest;

  factory FollowRequest.fromJson(Map<String, dynamic> json)
  => _$FollowRequestFromJson(json);
}

@freezed
class FollowResponse with _$FollowResponse {
  factory FollowResponse({
    required UserMiniInfo user,
  }) = _FollowResponse;

  factory FollowResponse.fromJson(Map<String, dynamic> json)
  => _$FollowResponseFromJson(json);
}

@freezed
class UnFollowRequest with _$UnFollowRequest {
  factory UnFollowRequest({
    required String userId,
  }) = _UnFollowRequest;

  factory UnFollowRequest.fromJson(Map<String, dynamic> json)
  => _$UnFollowRequestFromJson(json);
}

@freezed
class UnFollowResponse with _$UnFollowResponse {
  factory UnFollowResponse({
    required UserMiniInfo user,
  }) = _UnFollowResponse;

  factory UnFollowResponse.fromJson(Map<String, dynamic> json)
  => _$UnFollowResponseFromJson(json);
}