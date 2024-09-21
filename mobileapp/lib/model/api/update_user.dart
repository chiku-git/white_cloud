import 'package:white_cloud/importer.dart';

part 'update_user.freezed.dart';
part 'update_user.g.dart';

@freezed
class UpdateUserResponse with _$UpdateUserResponse {
  factory UpdateUserResponse({
    required UserInfo user,
  }) = _UpdateUserResponse;

  factory UpdateUserResponse.fromJson(Map<String, dynamic> json)
    => _$UpdateUserResponseFromJson(json);
}