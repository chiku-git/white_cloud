// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_favorites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetFavoritesRequestImpl _$$GetFavoritesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFavoritesRequestImpl(
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$$GetFavoritesRequestImplToJson(
        _$GetFavoritesRequestImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
    };

_$GetFavoritesResponseImpl _$$GetFavoritesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFavoritesResponseImpl(
      digests: (json['digests'] as List<dynamic>)
          .map((e) => PostDigest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetFavoritesResponseImplToJson(
        _$GetFavoritesResponseImpl instance) =>
    <String, dynamic>{
      'digests': instance.digests,
    };
