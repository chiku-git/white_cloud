// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserResponse _$UpdateUserResponseFromJson(Map<String, dynamic> json) {
  return _UpdateUserResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserResponse {
  UserInfo get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserResponseCopyWith<UpdateUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserResponseCopyWith<$Res> {
  factory $UpdateUserResponseCopyWith(
          UpdateUserResponse value, $Res Function(UpdateUserResponse) then) =
      _$UpdateUserResponseCopyWithImpl<$Res, UpdateUserResponse>;
  @useResult
  $Res call({UserInfo user});

  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$UpdateUserResponseCopyWithImpl<$Res, $Val extends UpdateUserResponse>
    implements $UpdateUserResponseCopyWith<$Res> {
  _$UpdateUserResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateUserResponseImplCopyWith<$Res>
    implements $UpdateUserResponseCopyWith<$Res> {
  factory _$$UpdateUserResponseImplCopyWith(_$UpdateUserResponseImpl value,
          $Res Function(_$UpdateUserResponseImpl) then) =
      __$$UpdateUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserInfo user});

  @override
  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$$UpdateUserResponseImplCopyWithImpl<$Res>
    extends _$UpdateUserResponseCopyWithImpl<$Res, _$UpdateUserResponseImpl>
    implements _$$UpdateUserResponseImplCopyWith<$Res> {
  __$$UpdateUserResponseImplCopyWithImpl(_$UpdateUserResponseImpl _value,
      $Res Function(_$UpdateUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UpdateUserResponseImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserResponseImpl implements _UpdateUserResponse {
  _$UpdateUserResponseImpl({required this.user});

  factory _$UpdateUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserResponseImplFromJson(json);

  @override
  final UserInfo user;

  @override
  String toString() {
    return 'UpdateUserResponse(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserResponseImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserResponseImplCopyWith<_$UpdateUserResponseImpl> get copyWith =>
      __$$UpdateUserResponseImplCopyWithImpl<_$UpdateUserResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserResponse implements UpdateUserResponse {
  factory _UpdateUserResponse({required final UserInfo user}) =
      _$UpdateUserResponseImpl;

  factory _UpdateUserResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateUserResponseImpl.fromJson;

  @override
  UserInfo get user;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserResponseImplCopyWith<_$UpdateUserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
