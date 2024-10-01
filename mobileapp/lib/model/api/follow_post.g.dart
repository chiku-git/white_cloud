// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FollowRequestImpl _$$FollowRequestImplFromJson(Map<String, dynamic> json) =>
    _$FollowRequestImpl(
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$FollowRequestImplToJson(_$FollowRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

_$FollowResponseImpl _$$FollowResponseImplFromJson(Map<String, dynamic> json) =>
    _$FollowResponseImpl(
      user: UserMiniInfo.fromJson(json['user']),
    );

Map<String, dynamic> _$$FollowResponseImplToJson(
        _$FollowResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$UnFollowRequestImpl _$$UnFollowRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UnFollowRequestImpl(
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$UnFollowRequestImplToJson(
        _$UnFollowRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

_$UnFollowResponseImpl _$$UnFollowResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UnFollowResponseImpl(
      user: UserMiniInfo.fromJson(json['user']),
    );

Map<String, dynamic> _$$UnFollowResponseImplToJson(
        _$UnFollowResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
