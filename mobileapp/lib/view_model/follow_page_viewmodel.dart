import 'package:white_cloud/importer.dart';

part 'follow_page_viewmodel.freezed.dart';

@freezed
abstract class FollowPageViewModel implements _$FollowPageViewModel {
  const FollowPageViewModel._();

  factory FollowPageViewModel({
    required UserInfo user,
    required int initialPageIndex,
  }) = _FollowPageViewModel;
}