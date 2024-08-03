// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_toggle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteToggleRequestImpl _$$FavoriteToggleRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteToggleRequestImpl(
      postId: json['postId'] as String,
    );

Map<String, dynamic> _$$FavoriteToggleRequestImplToJson(
        _$FavoriteToggleRequestImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
    };

_$FavoriteToggleResponseImpl _$$FavoriteToggleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteToggleResponseImpl(
      digest: PostDigest.fromJson(json['digest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavoriteToggleResponseImplToJson(
        _$FavoriteToggleResponseImpl instance) =>
    <String, dynamic>{
      'digest': instance.digest,
    };
