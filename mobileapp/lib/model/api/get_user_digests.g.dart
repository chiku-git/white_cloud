// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_digests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserDigestsRequestImpl _$$GetUserDigestsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserDigestsRequestImpl(
      page: (json['page'] as num).toInt(),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$GetUserDigestsRequestImplToJson(
        _$GetUserDigestsRequestImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'userId': instance.userId,
    };

_$GetUserDigestsResponseImpl _$$GetUserDigestsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserDigestsResponseImpl(
      digests: (json['digests'] as List<dynamic>)
          .map((e) => PostDigest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetUserDigestsResponseImplToJson(
        _$GetUserDigestsResponseImpl instance) =>
    <String, dynamic>{
      'digests': instance.digests,
    };
