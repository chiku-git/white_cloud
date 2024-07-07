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
  UserInfo get user => throw _privateConstructorUsedError;

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
  $Res call({UserInfo user});

  $UserInfoCopyWith<$Res> get user;
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
              as UserInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res> get user {
    return $UserInfoCopyWith<$Res>(_value.user, (value) {
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
  $Res call({UserInfo user});

  @override
  $UserInfoCopyWith<$Res> get user;
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
              as UserInfo,
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
  final UserInfo user;

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
  factory _RegisterUserResponse({required final UserInfo user}) =
      _$RegisterUserResponseImpl;

  factory _RegisterUserResponse.fromJson(Map<String, dynamic> json) =
      _$RegisterUserResponseImpl.fromJson;

  @override
  UserInfo get user;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserResponseImplCopyWith<_$RegisterUserResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
