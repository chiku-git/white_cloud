// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      id: json['id'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      bio: json['bio'] as String,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      lastLoginAt: json['lastLoginAt'] as String,
      followInfo: json['follow_info'] == null
          ? null
          : FollowInfo.fromJson(json['follow_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'bio': instance.bio,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'lastLoginAt': instance.lastLoginAt,
      'follow_info': instance.followInfo,
    };
