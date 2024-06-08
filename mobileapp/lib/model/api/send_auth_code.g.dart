// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_auth_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendAuthCodeRequestImpl _$$SendAuthCodeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendAuthCodeRequestImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$SendAuthCodeRequestImplToJson(
        _$SendAuthCodeRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$SendAuthCodeResponseImpl _$$SendAuthCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendAuthCodeResponseImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$SendAuthCodeResponseImplToJson(
        _$SendAuthCodeResponseImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
