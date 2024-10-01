// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_mini_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserMiniInfoImpl _$$UserMiniInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserMiniInfoImpl(
      id: json['id'] as String,
      userName: json['userName'] as String,
      bio: json['bio'] as String,
      image: json['image'] as String?,
      followInfo: json['follow_info'] == null
          ? null
          : FollowInfo.fromJson(json['follow_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserMiniInfoImplToJson(_$UserMiniInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'bio': instance.bio,
      'image': instance.image,
      'follow_info': instance.followInfo,
    };
