import 'package:isar/isar.dart';
import 'package:white_cloud/importer.dart';

part 'follow_info.g.dart';

@embedded @JsonSerializable()
class FollowInfo {
  late int followers;
  late int following;
  @JsonKey(name: "is_following") late bool isFollowing;

  FollowInfo();

  factory FollowInfo.fromJson(Map<String, dynamic> json)
    => _$FollowInfoFromJson(json);

  Map<String, dynamic> toJson() => _$FollowInfoToJson(this);
}

class FollowInfoConverter extends JsonConverter<FollowInfo, Map<String, dynamic>> {
  @override
  FollowInfo fromJson(Map<String, dynamic> json) {
    return FollowInfo.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(FollowInfo object) {
    return object.toJson();
  }

}