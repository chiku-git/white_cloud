import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

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

  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}