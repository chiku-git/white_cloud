// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_digest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDigestImpl _$$PostDigestImplFromJson(Map<String, dynamic> json) =>
    _$PostDigestImpl(
      post: PostInfo.fromJson(json['post'] as Map<String, dynamic>),
      favorite:
          FavoriteSummary.fromJson(json['favorite'] as Map<String, dynamic>),
      reply: ReplySummary.fromJson(json['reply'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostDigestImplToJson(_$PostDigestImpl instance) =>
    <String, dynamic>{
      'post': instance.post,
      'favorite': instance.favorite,
      'reply': instance.reply,
    };

_$FavoriteSummaryImpl _$$FavoriteSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteSummaryImpl(
      count: (json['count'] as num).toInt(),
      isMyFavorite: json['isMyFavorite'] as bool,
    );

Map<String, dynamic> _$$FavoriteSummaryImplToJson(
        _$FavoriteSummaryImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'isMyFavorite': instance.isMyFavorite,
    };

_$ReplySummaryImpl _$$ReplySummaryImplFromJson(Map<String, dynamic> json) =>
    _$ReplySummaryImpl(
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$ReplySummaryImplToJson(_$ReplySummaryImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
