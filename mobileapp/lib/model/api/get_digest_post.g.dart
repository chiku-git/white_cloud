// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_digest_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDigestPostRequestImpl _$$GetDigestPostRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDigestPostRequestImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$GetDigestPostRequestImplToJson(
        _$GetDigestPostRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$GetDigestPostResponseImpl _$$GetDigestPostResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDigestPostResponseImpl(
      digest: PostDigest.fromJson(json['digest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetDigestPostResponseImplToJson(
        _$GetDigestPostResponseImpl instance) =>
    <String, dynamic>{
      'digest': instance.digest,
    };
