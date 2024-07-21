import 'package:white_cloud/importer.dart';

part 'register_user.freezed.dart';
part 'register_user.g.dart';

@freezed
class RegisterUserResponse with _$RegisterUserResponse {
  factory RegisterUserResponse({
    required UserInfo user,
    required String token,
  }) = _RegisterUserResponse;

  factory RegisterUserResponse.fromJson(Map<String, dynamic> json)
    => _$RegisterUserResponseFromJson(json);
}