import 'package:white_cloud/importer.dart';

part 'user_info.freezed.dart';

@freezed
abstract class UserInfo with _$UserInfo {
  UserInfo._();

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
    return UserInfo(
        id: json["id"],
        userName: json["userName"],
        email: json["email"],
        bio: json["bio"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        lastLoginAt: json["lastLoginAt"],
        image: json["image"],
        followInfo: () {
          final map = json["follow_info"];

          if (map != null) {
            if (map is Map<String, dynamic>) {
              return FollowInfo.fromJson(json["follow_info"]);
            } else if (map is FollowInfo) {
              return map;
            } else {
              return null;
            }
          } else {
            return null;
          }
        }()
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "userName": userName,
      "email": email,
      "bio": bio,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
      "lastLoginAt": lastLoginAt,
      "image": image,
      "follow_info": followInfo?.toJson(),
    };
  }
}
