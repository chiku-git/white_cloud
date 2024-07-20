// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_posts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchPostsRequestImpl _$$SearchPostsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchPostsRequestImpl(
      keyword: json['keyword'] as String,
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchPostsRequestImplToJson(
        _$SearchPostsRequestImpl instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'page': instance.page,
    };

_$SearchPostsResponseImpl _$$SearchPostsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchPostsResponseImpl(
      posts: (json['posts'] as List<dynamic>)
          .map((e) => PostInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchPostsResponseImplToJson(
        _$SearchPostsResponseImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };
