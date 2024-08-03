// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostInfoImpl _$$PostInfoImplFromJson(Map<String, dynamic> json) =>
    _$PostInfoImpl(
      id: json['id'] as String,
      body: json['body'] as String,
      user: UserMiniInfo.fromJson(json['user']),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$PostInfoImplToJson(_$PostInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'user': instance.user,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
