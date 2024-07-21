import 'package:white_cloud/importer.dart';

part 'search_user.freezed.dart';
part 'search_user.g.dart';

@freezed
class SearchUserRequest with _$SearchUserRequest {
  factory SearchUserRequest({
    required String keyword,
    required int page,
  }) = _SearchUserRequest;

  factory SearchUserRequest.fromJson(Map<String, dynamic> json)
    => _$SearchUserRequestFromJson(json);
}

@freezed
class SearchUserResponse with _$SearchUserResponse {
  factory SearchUserResponse({
    required List<UserMiniInfo> users,
  }) = _SearchUserResponse;

  factory SearchUserResponse.fromJson(Map<String, dynamic> json)
    => _$SearchUserResponseFromJson(json);
}