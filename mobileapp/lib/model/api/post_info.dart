import 'package:white_cloud/importer.dart';

part 'post_info.freezed.dart';
part 'post_info.g.dart';

@freezed
class PostInfo with _$PostInfo {
  factory PostInfo({
    required String id,
    String? body,
    UserMiniInfo? user,
    required String createdAt,
    String? updatedAt,
    int? likes,
    int? comments,
  }) = _PostInfo;

  factory PostInfo.fromJson(Map<String, dynamic> json)
  => _$PostInfoFromJson(json);
}