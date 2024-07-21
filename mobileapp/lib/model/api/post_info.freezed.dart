// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostInfo _$PostInfoFromJson(Map<String, dynamic> json) {
  return _PostInfo.fromJson(json);
}

/// @nodoc
mixin _$PostInfo {
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  UserMiniInfo get user => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostInfoCopyWith<PostInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostInfoCopyWith<$Res> {
  factory $PostInfoCopyWith(PostInfo value, $Res Function(PostInfo) then) =
      _$PostInfoCopyWithImpl<$Res, PostInfo>;
  @useResult
  $Res call(
      {String id,
      String body,
      UserMiniInfo user,
      String createdAt,
      String updatedAt,
      int likes,
      int comments});

  $UserMiniInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$PostInfoCopyWithImpl<$Res, $Val extends PostInfo>
    implements $PostInfoCopyWith<$Res> {
  _$PostInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? user = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? likes = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserMiniInfo,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMiniInfoCopyWith<$Res> get user {
    return $UserMiniInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostInfoImplCopyWith<$Res>
    implements $PostInfoCopyWith<$Res> {
  factory _$$PostInfoImplCopyWith(
          _$PostInfoImpl value, $Res Function(_$PostInfoImpl) then) =
      __$$PostInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String body,
      UserMiniInfo user,
      String createdAt,
      String updatedAt,
      int likes,
      int comments});

  @override
  $UserMiniInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$$PostInfoImplCopyWithImpl<$Res>
    extends _$PostInfoCopyWithImpl<$Res, _$PostInfoImpl>
    implements _$$PostInfoImplCopyWith<$Res> {
  __$$PostInfoImplCopyWithImpl(
      _$PostInfoImpl _value, $Res Function(_$PostInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? user = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? likes = null,
    Object? comments = null,
  }) {
    return _then(_$PostInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserMiniInfo,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostInfoImpl implements _PostInfo {
  _$PostInfoImpl(
      {required this.id,
      required this.body,
      required this.user,
      required this.createdAt,
      required this.updatedAt,
      required this.likes,
      required this.comments});

  factory _$PostInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String body;
  @override
  final UserMiniInfo user;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final int likes;
  @override
  final int comments;

  @override
  String toString() {
    return 'PostInfo(id: $id, body: $body, user: $user, createdAt: $createdAt, updatedAt: $updatedAt, likes: $likes, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, body, user, createdAt, updatedAt, likes, comments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostInfoImplCopyWith<_$PostInfoImpl> get copyWith =>
      __$$PostInfoImplCopyWithImpl<_$PostInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostInfoImplToJson(
      this,
    );
  }
}

abstract class _PostInfo implements PostInfo {
  factory _PostInfo(
      {required final String id,
      required final String body,
      required final UserMiniInfo user,
      required final String createdAt,
      required final String updatedAt,
      required final int likes,
      required final int comments}) = _$PostInfoImpl;

  factory _PostInfo.fromJson(Map<String, dynamic> json) =
      _$PostInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get body;
  @override
  UserMiniInfo get user;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  int get likes;
  @override
  int get comments;
  @override
  @JsonKey(ignore: true)
  _$$PostInfoImplCopyWith<_$PostInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
