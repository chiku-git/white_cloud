import 'package:isar/isar.dart';
import 'package:white_cloud/importer.dart';

part 'user.g.dart';

@collection
@JsonSerializable()
class User {
  User();

  @JsonKey(includeFromJson: false, includeToJson: false)
  Id localId = Isar.autoIncrement;
  late String id;
  late String userName;
  late String bio;
  late String email;
  String? image;
  late DateTime createdAt;
  late DateTime updatedAt;
  late DateTime lastLoginAt;
  @JsonKey(name: "follow_info") FollowInfo? followInfo;

  factory User.fromJson(Map<String, dynamic> json) {
    if (json["follow_info"].runtimeType == FollowInfo) {
      json["follow_info"] = json["follow_info"].toJson();
    }
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}