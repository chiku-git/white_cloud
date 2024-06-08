// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailVO {
  EmailState get state => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  ErrorResponse? get sendAuthCodeError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailVOCopyWith<EmailVO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVOCopyWith<$Res> {
  factory $EmailVOCopyWith(EmailVO value, $Res Function(EmailVO) then) =
      _$EmailVOCopyWithImpl<$Res, EmailVO>;
  @useResult
  $Res call({EmailState state, String email, ErrorResponse? sendAuthCodeError});

  $ErrorResponseCopyWith<$Res>? get sendAuthCodeError;
}

/// @nodoc
class _$EmailVOCopyWithImpl<$Res, $Val extends EmailVO>
    implements $EmailVOCopyWith<$Res> {
  _$EmailVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? email = null,
    Object? sendAuthCodeError = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as EmailState,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sendAuthCodeError: freezed == sendAuthCodeError
          ? _value.sendAuthCodeError
          : sendAuthCodeError // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorResponseCopyWith<$Res>? get sendAuthCodeError {
    if (_value.sendAuthCodeError == null) {
      return null;
    }

    return $ErrorResponseCopyWith<$Res>(_value.sendAuthCodeError!, (value) {
      return _then(_value.copyWith(sendAuthCodeError: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmailVOImplCopyWith<$Res> implements $EmailVOCopyWith<$Res> {
  factory _$$EmailVOImplCopyWith(
          _$EmailVOImpl value, $Res Function(_$EmailVOImpl) then) =
      __$$EmailVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailState state, String email, ErrorResponse? sendAuthCodeError});

  @override
  $ErrorResponseCopyWith<$Res>? get sendAuthCodeError;
}

/// @nodoc
class __$$EmailVOImplCopyWithImpl<$Res>
    extends _$EmailVOCopyWithImpl<$Res, _$EmailVOImpl>
    implements _$$EmailVOImplCopyWith<$Res> {
  __$$EmailVOImplCopyWithImpl(
      _$EmailVOImpl _value, $Res Function(_$EmailVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? email = null,
    Object? sendAuthCodeError = freezed,
  }) {
    return _then(_$EmailVOImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as EmailState,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sendAuthCodeError: freezed == sendAuthCodeError
          ? _value.sendAuthCodeError
          : sendAuthCodeError // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
    ));
  }
}

/// @nodoc

class _$EmailVOImpl implements _EmailVO {
  _$EmailVOImpl(
      {required this.state, required this.email, this.sendAuthCodeError});

  @override
  final EmailState state;
  @override
  final String email;
  @override
  final ErrorResponse? sendAuthCodeError;

  @override
  String toString() {
    return 'EmailVO(state: $state, email: $email, sendAuthCodeError: $sendAuthCodeError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVOImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.sendAuthCodeError, sendAuthCodeError) ||
                other.sendAuthCodeError == sendAuthCodeError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, email, sendAuthCodeError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailVOImplCopyWith<_$EmailVOImpl> get copyWith =>
      __$$EmailVOImplCopyWithImpl<_$EmailVOImpl>(this, _$identity);
}

abstract class _EmailVO implements EmailVO {
  factory _EmailVO(
      {required final EmailState state,
      required final String email,
      final ErrorResponse? sendAuthCodeError}) = _$EmailVOImpl;

  @override
  EmailState get state;
  @override
  String get email;
  @override
  ErrorResponse? get sendAuthCodeError;
  @override
  @JsonKey(ignore: true)
  _$$EmailVOImplCopyWith<_$EmailVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
