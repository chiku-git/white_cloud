import 'package:white_cloud/importer.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json)
    => _$LoginRequestFromJson(json);
}

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    required String token,
    required UserInfo user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json)
    => _$LoginResponseFromJson(json);
}