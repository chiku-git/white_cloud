import 'package:white_cloud/importer.dart';

part 'user_mini_info.freezed.dart';
part 'user_mini_info.g.dart';

@freezed
class UserMiniInfo with _$UserMiniInfo {
  factory UserMiniInfo({
    required String id,
    required String userName,
    required String bio,
    String? image,
  }) = _UserMiniInfo;

  factory UserMiniInfo.fromJson(json) => _$UserMiniInfoFromJson(json);
}
