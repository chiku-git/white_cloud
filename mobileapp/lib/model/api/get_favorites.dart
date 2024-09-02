import 'package:white_cloud/importer.dart';

part 'get_favorites.freezed.dart';
part 'get_favorites.g.dart';

@freezed
class GetFavoritesRequest with _$GetFavoritesRequest {
  factory GetFavoritesRequest({
    required int page,
  }) = _GetFavoritesRequest;

  factory GetFavoritesRequest.fromJson(Map<String, dynamic> json)
    => _$GetFavoritesRequestFromJson(json);
}

@freezed
class GetFavoritesResponse with _$GetFavoritesResponse {
  factory GetFavoritesResponse({
    required List<PostDigest> digests,
  }) = _GetFavoritesResponse;

  factory GetFavoritesResponse.fromJson(Map<String, dynamic> json)
    => _$GetFavoritesResponseFromJson(json);
}