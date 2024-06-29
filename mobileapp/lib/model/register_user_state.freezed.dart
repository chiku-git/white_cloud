// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterUserState {
  UserFormData get user => throw _privateConstructorUsedError;
  ApiState get apiState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterUserStateCopyWith<RegisterUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserStateCopyWith<$Res> {
  factory $RegisterUserStateCopyWith(
          RegisterUserState value, $Res Function(RegisterUserState) then) =
      _$RegisterUserStateCopyWithImpl<$Res, RegisterUserState>;
  @useResult
  $Res call({UserFormData user, ApiState apiState});

  $UserFormDataCopyWith<$Res> get user;
}

/// @nodoc
class _$RegisterUserStateCopyWithImpl<$Res, $Val extends RegisterUserState>
    implements $RegisterUserStateCopyWith<$Res> {
  _$RegisterUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? apiState = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserFormData,
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as ApiState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFormDataCopyWith<$Res> get user {
    return $UserFormDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterUserStateImplCopyWith<$Res>
    implements $RegisterUserStateCopyWith<$Res> {
  factory _$$RegisterUserStateImplCopyWith(_$RegisterUserStateImpl value,
          $Res Function(_$RegisterUserStateImpl) then) =
      __$$RegisterUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserFormData user, ApiState apiState});

  @override
  $UserFormDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegisterUserStateImplCopyWithImpl<$Res>
    extends _$RegisterUserStateCopyWithImpl<$Res, _$RegisterUserStateImpl>
    implements _$$RegisterUserStateImplCopyWith<$Res> {
  __$$RegisterUserStateImplCopyWithImpl(_$RegisterUserStateImpl _value,
      $Res Function(_$RegisterUserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? apiState = null,
  }) {
    return _then(_$RegisterUserStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserFormData,
      apiState: null == apiState
          ? _value.apiState
          : apiState // ignore: cast_nullable_to_non_nullable
              as ApiState,
    ));
  }
}

/// @nodoc

class _$RegisterUserStateImpl extends _RegisterUserState {
  _$RegisterUserStateImpl({required this.user, required this.apiState})
      : super._();

  @override
  final UserFormData user;
  @override
  final ApiState apiState;

  @override
  String toString() {
    return 'RegisterUserState(user: $user, apiState: $apiState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.apiState, apiState) ||
                other.apiState == apiState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, apiState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserStateImplCopyWith<_$RegisterUserStateImpl> get copyWith =>
      __$$RegisterUserStateImplCopyWithImpl<_$RegisterUserStateImpl>(
          this, _$identity);
}

abstract class _RegisterUserState extends RegisterUserState {
  factory _RegisterUserState(
      {required final UserFormData user,
      required final ApiState apiState}) = _$RegisterUserStateImpl;
  _RegisterUserState._() : super._();

  @override
  UserFormData get user;
  @override
  ApiState get apiState;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserStateImplCopyWith<_$RegisterUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
