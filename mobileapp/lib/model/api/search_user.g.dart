// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchUserRequestImpl _$$SearchUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchUserRequestImpl(
      keyword: json['keyword'] as String,
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchUserRequestImplToJson(
        _$SearchUserRequestImpl instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'page': instance.page,
    };

_$SearchUserResponseImpl _$$SearchUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchUserResponseImpl(
      users:
          (json['users'] as List<dynamic>).map(UserMiniInfo.fromJson).toList(),
    );

Map<String, dynamic> _$$SearchUserResponseImplToJson(
        _$SearchUserResponseImpl instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
