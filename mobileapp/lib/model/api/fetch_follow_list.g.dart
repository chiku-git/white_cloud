// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_follow_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchFollowListRequestImpl _$$FetchFollowListRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchFollowListRequestImpl(
      userId: json['userId'] as String,
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$$FetchFollowListRequestImplToJson(
        _$FetchFollowListRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'page': instance.page,
    };

_$FetchFollowersResponseImpl _$$FetchFollowersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchFollowersResponseImpl(
      followers: (json['followers'] as List<dynamic>)
          .map(UserMiniInfo.fromJson)
          .toList(),
    );

Map<String, dynamic> _$$FetchFollowersResponseImplToJson(
        _$FetchFollowersResponseImpl instance) =>
    <String, dynamic>{
      'followers': instance.followers,
    };

_$FetchFollowingResponseImpl _$$FetchFollowingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchFollowingResponseImpl(
      following: (json['following'] as List<dynamic>)
          .map(UserMiniInfo.fromJson)
          .toList(),
    );

Map<String, dynamic> _$$FetchFollowingResponseImplToJson(
        _$FetchFollowingResponseImpl instance) =>
    <String, dynamic>{
      'following': instance.following,
    };
