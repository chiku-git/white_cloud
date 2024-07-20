// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostInfoImpl _$$PostInfoImplFromJson(Map<String, dynamic> json) =>
    _$PostInfoImpl(
      id: json['id'] as String,
      body: json['body'] as String?,
      user: json['user'] == null ? null : UserMiniInfo.fromJson(json['user']),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String?,
      likes: (json['likes'] as num?)?.toInt(),
      comments: (json['comments'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PostInfoImplToJson(_$PostInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'user': instance.user,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'likes': instance.likes,
      'comments': instance.comments,
    };
