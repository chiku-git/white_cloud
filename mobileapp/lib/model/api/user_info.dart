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
    @JsonKey(name: "follow_info") FollowInfo? followInfo,
  }) = _UserInfo;

  factory UserInfo.fromJson(json) {
    if (json["follow_info"].runtimeType == FollowInfo) {
      json["follow_info"] = json["follow_info"].toJson();
    }
    return _$UserInfoFromJson(json);
  }
}
