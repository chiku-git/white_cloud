// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_replies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRepliesRequestImpl _$$GetRepliesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRepliesRequestImpl(
      postId: json['postId'] as String,
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$$GetRepliesRequestImplToJson(
        _$GetRepliesRequestImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'page': instance.page,
    };

_$GetRepliesResponseImpl _$$GetRepliesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRepliesResponseImpl(
      replies: (json['replies'] as List<dynamic>)
          .map((e) => PostDigest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetRepliesResponseImplToJson(
        _$GetRepliesResponseImpl instance) =>
    <String, dynamic>{
      'replies': instance.replies,
    };
