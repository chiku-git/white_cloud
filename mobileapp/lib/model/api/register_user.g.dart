// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterUserResponseImpl _$$RegisterUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserResponseImpl(
      user: RegisterUserResponseUserInfo.fromJson(
          json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterUserResponseImplToJson(
        _$RegisterUserResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$RegisterUserResponseUserInfoImpl _$$RegisterUserResponseUserInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserResponseUserInfoImpl(
      id: json['id'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      bio: json['bio'] as String,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$RegisterUserResponseUserInfoImplToJson(
        _$RegisterUserResponseUserInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'bio': instance.bio,
      'image': instance.image,
      'createdAt': instance.createdAt,
    };
