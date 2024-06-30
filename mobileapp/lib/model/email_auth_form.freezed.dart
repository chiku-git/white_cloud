// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_auth_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailAuthForm {
  List<String> get digits => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  ErrorResponse? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailAuthFormCopyWith<EmailAuthForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAuthFormCopyWith<$Res> {
  factory $EmailAuthFormCopyWith(
          EmailAuthForm value, $Res Function(EmailAuthForm) then) =
      _$EmailAuthFormCopyWithImpl<$Res, EmailAuthForm>;
  @useResult
  $Res call(
      {List<String> digits, String email, int length, ErrorResponse? error});

  $ErrorResponseCopyWith<$Res>? get error;
}

/// @nodoc
class _$EmailAuthFormCopyWithImpl<$Res, $Val extends EmailAuthForm>
    implements $EmailAuthFormCopyWith<$Res> {
  _$EmailAuthFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digits = null,
    Object? email = null,
    Object? length = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$EmailAuthFormImplCopyWith<$Res>
    implements $EmailAuthFormCopyWith<$Res> {
  factory _$$EmailAuthFormImplCopyWith(
          _$EmailAuthFormImpl value, $Res Function(_$EmailAuthFormImpl) then) =
      __$$EmailAuthFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> digits, String email, int length, ErrorResponse? error});

  @override
  $ErrorResponseCopyWith<$Res>? get error;
}

/// @nodoc
class __$$EmailAuthFormImplCopyWithImpl<$Res>
    extends _$EmailAuthFormCopyWithImpl<$Res, _$EmailAuthFormImpl>
    implements _$$EmailAuthFormImplCopyWith<$Res> {
  __$$EmailAuthFormImplCopyWithImpl(
      _$EmailAuthFormImpl _value, $Res Function(_$EmailAuthFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digits = null,
    Object? email = null,
    Object? length = null,
    Object? error = freezed,
  }) {
    return _then(_$EmailAuthFormImpl(
      digits: null == digits
          ? _value._digits
          : digits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$EmailAuthFormImpl extends _EmailAuthForm {
  _$EmailAuthFormImpl(
      {required final List<String> digits,
      required this.email,
      required this.length,
      required this.error})
      : _digits = digits,
        super._();

  final List<String> _digits;
  @override
  List<String> get digits {
    if (_digits is EqualUnmodifiableListView) return _digits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_digits);
  }

  @override
  final String email;
  @override
  final int length;
  @override
  final ErrorResponse? error;

  @override
  String toString() {
    return 'EmailAuthForm(digits: $digits, email: $email, length: $length, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailAuthFormImpl &&
            const DeepCollectionEquality().equals(other._digits, _digits) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_digits), email, length, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailAuthFormImplCopyWith<_$EmailAuthFormImpl> get copyWith =>
      __$$EmailAuthFormImplCopyWithImpl<_$EmailAuthFormImpl>(this, _$identity);
}

abstract class _EmailAuthForm extends EmailAuthForm {
  factory _EmailAuthForm(
      {required final List<String> digits,
      required final String email,
      required final int length,
      required final ErrorResponse? error}) = _$EmailAuthFormImpl;
  _EmailAuthForm._() : super._();

  @override
  List<String> get digits;
  @override
  String get email;
  @override
  int get length;
  @override
  ErrorResponse? get error;
  @override
  @JsonKey(ignore: true)
  _$$EmailAuthFormImplCopyWith<_$EmailAuthFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
