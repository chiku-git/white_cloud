import 'package:white_cloud/importer.dart';

part 'post_digest.freezed.dart';
part 'post_digest.g.dart';

@freezed
class PostDigest with _$PostDigest {
  factory PostDigest({
    required PostInfo post,
    required FavoriteSummary favorite,
    required ReplySummary reply,
  }) = _PostDigest;

  factory PostDigest.fromJson(Map<String, dynamic> json)
  => _$PostDigestFromJson(json);
}

@freezed
class FavoriteSummary with _$FavoriteSummary {
  factory FavoriteSummary({
    required int count,
    required bool isMyFavorite,
  }) = _FavoriteSummary;

  factory FavoriteSummary.fromJson(Map<String, dynamic> json)
  => _$FavoriteSummaryFromJson(json);
}

@freezed
class ReplySummary with _$ReplySummary {
  factory ReplySummary({
    required int count,
  }) = _ReplySummary;

  factory ReplySummary.fromJson(Map<String, dynamic> json)
  => _$ReplySummaryFromJson(json);
}