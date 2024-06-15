// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_email.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticateEmailRequestImpl _$$AuthenticateEmailRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticateEmailRequestImpl(
      email: json['email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$AuthenticateEmailRequestImplToJson(
        _$AuthenticateEmailRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };

_$AuthenticateEmailResponseImpl _$$AuthenticateEmailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticateEmailResponseImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$AuthenticateEmailResponseImplToJson(
        _$AuthenticateEmailResponseImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
