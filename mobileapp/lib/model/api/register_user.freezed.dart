// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterUserResponse _$RegisterUserResponseFromJson(Map<String, dynamic> json) {
  return _RegisterUserResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterUserResponse {
  RegisterUserResponseUserInfo get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserResponseCopyWith<RegisterUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserResponseCopyWith<$Res> {
  factory $RegisterUserResponseCopyWith(RegisterUserResponse value,
          $Res Function(RegisterUserResponse) then) =
      _$RegisterUserResponseCopyWithImpl<$Res, RegisterUserResponse>;
  @useResult
  $Res call({RegisterUserResponseUserInfo user});

  $RegisterUserResponseUserInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$RegisterUserResponseCopyWithImpl<$Res,
        $Val extends RegisterUserResponse>
    implements $RegisterUserResponseCopyWith<$Res> {
  _$RegisterUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RegisterUserResponseUserInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterUserResponseUserInfoCopyWith<$Res> get user {
    return $RegisterUserResponseUserInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterUserResponseImplCopyWith<$Res>
    implements $RegisterUserResponseCopyWith<$Res> {
  factory _$$RegisterUserResponseImplCopyWith(_$RegisterUserResponseImpl value,
          $Res Function(_$RegisterUserResponseImpl) then) =
      __$$RegisterUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterUserResponseUserInfo user});

  @override
  $RegisterUserResponseUserInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegisterUserResponseImplCopyWithImpl<$Res>
    extends _$RegisterUserResponseCopyWithImpl<$Res, _$RegisterUserResponseImpl>
    implements _$$RegisterUserResponseImplCopyWith<$Res> {
  __$$RegisterUserResponseImplCopyWithImpl(_$RegisterUserResponseImpl _value,
      $Res Function(_$RegisterUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$RegisterUserResponseImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RegisterUserResponseUserInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUserResponseImpl implements _RegisterUserResponse {
  _$RegisterUserResponseImpl({required this.user});

  factory _$RegisterUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterUserResponseImplFromJson(json);

  @override
  final RegisterUserResponseUserInfo user;

  @override
  String toString() {
    return 'RegisterUserResponse(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserResponseImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserResponseImplCopyWith<_$RegisterUserResponseImpl>
      get copyWith =>
          __$$RegisterUserResponseImplCopyWithImpl<_$RegisterUserResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUserResponseImplToJson(
      this,
    );
  }
}

abstract class _RegisterUserResponse implements RegisterUserResponse {
  factory _RegisterUserResponse(
          {required final RegisterUserResponseUserInfo user}) =
      _$RegisterUserResponseImpl;

  factory _RegisterUserResponse.fromJson(Map<String, dynamic> json) =
      _$RegisterUserResponseImpl.fromJson;

  @override
  RegisterUserResponseUserInfo get user;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserResponseImplCopyWith<_$RegisterUserResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegisterUserResponseUserInfo _$RegisterUserResponseUserInfoFromJson(
    Map<String, dynamic> json) {
  return _RegisterUserResponseUserInfo.fromJson(json);
}

/// @nodoc
mixin _$RegisterUserResponseUserInfo {
  String get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserResponseUserInfoCopyWith<RegisterUserResponseUserInfo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserResponseUserInfoCopyWith<$Res> {
  factory $RegisterUserResponseUserInfoCopyWith(
          RegisterUserResponseUserInfo value,
          $Res Function(RegisterUserResponseUserInfo) then) =
      _$RegisterUserResponseUserInfoCopyWithImpl<$Res,
          RegisterUserResponseUserInfo>;
  @useResult
  $Res call(
      {String id,
      String userName,
      String email,
      String bio,
      String? image,
      String createdAt});
}

/// @nodoc
class _$RegisterUserResponseUserInfoCopyWithImpl<$Res,
        $Val extends RegisterUserResponseUserInfo>
    implements $RegisterUserResponseUserInfoCopyWith<$Res> {
  _$RegisterUserResponseUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? email = null,
    Object? bio = null,
    Object? image = freezed,
    Object? createdAt = null,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterUserResponseUserInfoImplCopyWith<$Res>
    implements $RegisterUserResponseUserInfoCopyWith<$Res> {
  factory _$$RegisterUserResponseUserInfoImplCopyWith(
          _$RegisterUserResponseUserInfoImpl value,
          $Res Function(_$RegisterUserResponseUserInfoImpl) then) =
      __$$RegisterUserResponseUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userName,
      String email,
      String bio,
      String? image,
      String createdAt});
}

/// @nodoc
class __$$RegisterUserResponseUserInfoImplCopyWithImpl<$Res>
    extends _$RegisterUserResponseUserInfoCopyWithImpl<$Res,
        _$RegisterUserResponseUserInfoImpl>
    implements _$$RegisterUserResponseUserInfoImplCopyWith<$Res> {
  __$$RegisterUserResponseUserInfoImplCopyWithImpl(
      _$RegisterUserResponseUserInfoImpl _value,
      $Res Function(_$RegisterUserResponseUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? email = null,
    Object? bio = null,
    Object? image = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$RegisterUserResponseUserInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUserResponseUserInfoImpl
    implements _RegisterUserResponseUserInfo {
  _$RegisterUserResponseUserInfoImpl(
      {required this.id,
      required this.userName,
      required this.email,
      required this.bio,
      this.image,
      required this.createdAt});

  factory _$RegisterUserResponseUserInfoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegisterUserResponseUserInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String userName;
  @override
  final String email;
  @override
  final String bio;
  @override
  final String? image;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'RegisterUserResponseUserInfo(id: $id, userName: $userName, email: $email, bio: $bio, image: $image, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserResponseUserInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userName, email, bio, image, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserResponseUserInfoImplCopyWith<
          _$RegisterUserResponseUserInfoImpl>
      get copyWith => __$$RegisterUserResponseUserInfoImplCopyWithImpl<
          _$RegisterUserResponseUserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUserResponseUserInfoImplToJson(
      this,
    );
  }
}

abstract class _RegisterUserResponseUserInfo
    implements RegisterUserResponseUserInfo {
  factory _RegisterUserResponseUserInfo(
      {required final String id,
      required final String userName,
      required final String email,
      required final String bio,
      final String? image,
      required final String createdAt}) = _$RegisterUserResponseUserInfoImpl;

  factory _RegisterUserResponseUserInfo.fromJson(Map<String, dynamic> json) =
      _$RegisterUserResponseUserInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get userName;
  @override
  String get email;
  @override
  String get bio;
  @override
  String? get image;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserResponseUserInfoImplCopyWith<
          _$RegisterUserResponseUserInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
