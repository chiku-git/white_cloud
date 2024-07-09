import 'package:white_cloud/importer.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  factory UserInfo({
    required String id,
    required String userName,
    required String email,
    required String bio,
    String? image,
    required String createdAt,
    required String updatedAt,
    required String lastLoginAt,
  }) = _UserInfo;

  factory UserInfo.fromJson(json) => _$UserInfoFromJson(json);
}
