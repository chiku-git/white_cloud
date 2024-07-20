// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePostRequestImpl _$$CreatePostRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePostRequestImpl(
      body: json['body'] as String,
    );

Map<String, dynamic> _$$CreatePostRequestImplToJson(
        _$CreatePostRequestImpl instance) =>
    <String, dynamic>{
      'body': instance.body,
    };

_$CreatePostResponseImpl _$$CreatePostResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePostResponseImpl(
      post: PostInfo.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreatePostResponseImplToJson(
        _$CreatePostResponseImpl instance) =>
    <String, dynamic>{
      'post': instance.post,
    };
