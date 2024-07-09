// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

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
      post: PostDetail.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreatePostResponseImplToJson(
        _$CreatePostResponseImpl instance) =>
    <String, dynamic>{
      'post': instance.post,
    };

_$PostDetailImpl _$$PostDetailImplFromJson(Map<String, dynamic> json) =>
    _$PostDetailImpl(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$PostDetailImplToJson(_$PostDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
    };
