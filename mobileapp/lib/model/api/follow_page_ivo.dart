import 'package:white_cloud/importer.dart';

part 'follow_page_ivo.freezed.dart';

@freezed
class FollowPageIvo with _$FollowPageIvo {
  factory FollowPageIvo({
    required UserInfo user,
    required int initialPageIndex,
  }) = _FollowPageIvo;
}
