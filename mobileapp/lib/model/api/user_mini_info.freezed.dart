// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_mini_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserMiniInfo _$UserMiniInfoFromJson(Map<String, dynamic> json) {
  return _UserMiniInfo.fromJson(json);
}

/// @nodoc
mixin _$UserMiniInfo {
  String get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMiniInfoCopyWith<UserMiniInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMiniInfoCopyWith<$Res> {
  factory $UserMiniInfoCopyWith(
          UserMiniInfo value, $Res Function(UserMiniInfo) then) =
      _$UserMiniInfoCopyWithImpl<$Res, UserMiniInfo>;
  @useResult
  $Res call({String id, String userName, String bio, String? image});
}

/// @nodoc
class _$UserMiniInfoCopyWithImpl<$Res, $Val extends UserMiniInfo>
    implements $UserMiniInfoCopyWith<$Res> {
  _$UserMiniInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? bio = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMiniInfoImplCopyWith<$Res>
    implements $UserMiniInfoCopyWith<$Res> {
  factory _$$UserMiniInfoImplCopyWith(
          _$UserMiniInfoImpl value, $Res Function(_$UserMiniInfoImpl) then) =
      __$$UserMiniInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userName, String bio, String? image});
}

/// @nodoc
class __$$UserMiniInfoImplCopyWithImpl<$Res>
    extends _$UserMiniInfoCopyWithImpl<$Res, _$UserMiniInfoImpl>
    implements _$$UserMiniInfoImplCopyWith<$Res> {
  __$$UserMiniInfoImplCopyWithImpl(
      _$UserMiniInfoImpl _value, $Res Function(_$UserMiniInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? bio = null,
    Object? image = freezed,
  }) {
    return _then(_$UserMiniInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMiniInfoImpl implements _UserMiniInfo {
  _$UserMiniInfoImpl(
      {required this.id,
      required this.userName,
      required this.bio,
      this.image});

  factory _$UserMiniInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMiniInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String userName;
  @override
  final String bio;
  @override
  final String? image;

  @override
  String toString() {
    return 'UserMiniInfo(id: $id, userName: $userName, bio: $bio, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMiniInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userName, bio, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMiniInfoImplCopyWith<_$UserMiniInfoImpl> get copyWith =>
      __$$UserMiniInfoImplCopyWithImpl<_$UserMiniInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMiniInfoImplToJson(
      this,
    );
  }
}

abstract class _UserMiniInfo implements UserMiniInfo {
  factory _UserMiniInfo(
      {required final String id,
      required final String userName,
      required final String bio,
      final String? image}) = _$UserMiniInfoImpl;

  factory _UserMiniInfo.fromJson(Map<String, dynamic> json) =
      _$UserMiniInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get userName;
  @override
  String get bio;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserMiniInfoImplCopyWith<_$UserMiniInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
