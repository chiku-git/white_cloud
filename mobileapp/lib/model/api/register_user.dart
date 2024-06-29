import 'package:white_cloud/importer.dart';

part 'register_user.freezed.dart';
part 'register_user.g.dart';

@freezed
class RegisterUserResponse with _$RegisterUserResponse {
  factory RegisterUserResponse({
    required RegisterUserResponseUserInfo user,
  }) = _RegisterUserResponse;

  factory RegisterUserResponse.fromJson(Map<String, dynamic> json)
    => _$RegisterUserResponseFromJson(json);
}

@freezed
class RegisterUserResponseUserInfo with _$RegisterUserResponseUserInfo {
  factory RegisterUserResponseUserInfo({
    required String id,
    required String userName,
    required String email,
    required String bio,
    String? image,
    required String createdAt,
  }) = _RegisterUserResponseUserInfo;

  factory RegisterUserResponseUserInfo.fromJson(Map<String, dynamic> json)
  => _$RegisterUserResponseUserInfoFromJson(json);
}
