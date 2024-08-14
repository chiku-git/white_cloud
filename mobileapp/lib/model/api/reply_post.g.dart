// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyPostRequestImpl _$$ReplyPostRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplyPostRequestImpl(
      replyToId: json['replyToId'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$ReplyPostRequestImplToJson(
        _$ReplyPostRequestImpl instance) =>
    <String, dynamic>{
      'replyToId': instance.replyToId,
      'body': instance.body,
    };

_$ReplyPostResponseImpl _$$ReplyPostResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplyPostResponseImpl(
      replyTo: PostDigest.fromJson(json['replyTo'] as Map<String, dynamic>),
      reply: PostDigest.fromJson(json['reply'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReplyPostResponseImplToJson(
        _$ReplyPostResponseImpl instance) =>
    <String, dynamic>{
      'replyTo': instance.replyTo,
      'reply': instance.reply,
    };
