import 'package:white_cloud/importer.dart';

part 'favorite_toggle.freezed.dart';
part 'favorite_toggle.g.dart';

@freezed
class FavoriteToggleRequest with _$FavoriteToggleRequest {
  factory FavoriteToggleRequest({
    required String postId,
  }) = _FavoriteToggleRequest;

  factory FavoriteToggleRequest.fromJson(Map<String, dynamic> json)
    => _$FavoriteToggleRequestFromJson(json);
}

@freezed
class FavoriteToggleResponse with _$FavoriteToggleResponse {
  factory FavoriteToggleResponse({
    required PostDigest digest,
  }) = _FavoriteToggleResponse;

  factory FavoriteToggleResponse.fromJson(Map<String, dynamic> json)
    => _$FavoriteToggleResponseFromJson(json);
}