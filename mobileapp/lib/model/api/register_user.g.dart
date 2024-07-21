// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterUserResponseImpl _$$RegisterUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserResponseImpl(
      user: UserInfo.fromJson(json['user']),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$RegisterUserResponseImplToJson(
        _$RegisterUserResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
