// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_digest_posts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDigestPostsRequestImpl _$$GetDigestPostsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDigestPostsRequestImpl(
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$$GetDigestPostsRequestImplToJson(
        _$GetDigestPostsRequestImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
    };

_$GetDigestPostsResponseImpl _$$GetDigestPostsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDigestPostsResponseImpl(
      digests: (json['digests'] as List<dynamic>)
          .map((e) => PostDigest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetDigestPostsResponseImplToJson(
        _$GetDigestPostsResponseImpl instance) =>
    <String, dynamic>{
      'digests': instance.digests,
    };
