// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      token: json['token'] as String,
      user: UserInfo.fromJson(json['user']),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
