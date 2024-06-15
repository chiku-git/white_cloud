// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_auth_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailAuthVO {
  List<String> get digits => throw _privateConstructorUsedError;
  EmailAuthState get authState => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  ErrorResponse? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailAuthVOCopyWith<EmailAuthVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAuthVOCopyWith<$Res> {
  factory $EmailAuthVOCopyWith(
          EmailAuthVO value, $Res Function(EmailAuthVO) then) =
      _$EmailAuthVOCopyWithImpl<$Res, EmailAuthVO>;
  @useResult
  $Res call(
      {List<String> digits,
      EmailAuthState authState,
      int length,
      ErrorResponse? error});

  $ErrorResponseCopyWith<$Res>? get error;
}

/// @nodoc
class _$EmailAuthVOCopyWithImpl<$Res, $Val extends EmailAuthVO>
    implements $EmailAuthVOCopyWith<$Res> {
  _$EmailAuthVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digits = null,
    Object? authState = null,
    Object? length = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as EmailAuthState,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorResponseCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorResponseCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmailAuthVOImplCopyWith<$Res>
    implements $EmailAuthVOCopyWith<$Res> {
  factory _$$EmailAuthVOImplCopyWith(
          _$EmailAuthVOImpl value, $Res Function(_$EmailAuthVOImpl) then) =
      __$$EmailAuthVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> digits,
      EmailAuthState authState,
      int length,
      ErrorResponse? error});

  @override
  $ErrorResponseCopyWith<$Res>? get error;
}

/// @nodoc
class __$$EmailAuthVOImplCopyWithImpl<$Res>
    extends _$EmailAuthVOCopyWithImpl<$Res, _$EmailAuthVOImpl>
    implements _$$EmailAuthVOImplCopyWith<$Res> {
  __$$EmailAuthVOImplCopyWithImpl(
      _$EmailAuthVOImpl _value, $Res Function(_$EmailAuthVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digits = null,
    Object? authState = null,
    Object? length = null,
    Object? error = freezed,
  }) {
    return _then(_$EmailAuthVOImpl(
      digits: null == digits
          ? _value._digits
          : digits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authState: null == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as EmailAuthState,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
    ));
  }
}

/// @nodoc

class _$EmailAuthVOImpl implements _EmailAuthVO {
  _$EmailAuthVOImpl(
      {required final List<String> digits,
      required this.authState,
      required this.length,
      required this.error})
      : _digits = digits;

  final List<String> _digits;
  @override
  List<String> get digits {
    if (_digits is EqualUnmodifiableListView) return _digits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_digits);
  }

  @override
  final EmailAuthState authState;
  @override
  final int length;
  @override
  final ErrorResponse? error;

  @override
  String toString() {
    return 'EmailAuthVO(digits: $digits, authState: $authState, length: $length, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailAuthVOImpl &&
            const DeepCollectionEquality().equals(other._digits, _digits) &&
            (identical(other.authState, authState) ||
                other.authState == authState) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_digits), authState, length, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailAuthVOImplCopyWith<_$EmailAuthVOImpl> get copyWith =>
      __$$EmailAuthVOImplCopyWithImpl<_$EmailAuthVOImpl>(this, _$identity);
}

abstract class _EmailAuthVO implements EmailAuthVO {
  factory _EmailAuthVO(
      {required final List<String> digits,
      required final EmailAuthState authState,
      required final int length,
      required final ErrorResponse? error}) = _$EmailAuthVOImpl;

  @override
  List<String> get digits;
  @override
  EmailAuthState get authState;
  @override
  int get length;
  @override
  ErrorResponse? get error;
  @override
  @JsonKey(ignore: true)
  _$$EmailAuthVOImplCopyWith<_$EmailAuthVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
