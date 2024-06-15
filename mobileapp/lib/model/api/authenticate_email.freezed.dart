// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticateEmailRequest _$AuthenticateEmailRequestFromJson(
    Map<String, dynamic> json) {
  return _AuthenticateEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateEmailRequest {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateEmailRequestCopyWith<AuthenticateEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateEmailRequestCopyWith<$Res> {
  factory $AuthenticateEmailRequestCopyWith(AuthenticateEmailRequest value,
          $Res Function(AuthenticateEmailRequest) then) =
      _$AuthenticateEmailRequestCopyWithImpl<$Res, AuthenticateEmailRequest>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$AuthenticateEmailRequestCopyWithImpl<$Res,
        $Val extends AuthenticateEmailRequest>
    implements $AuthenticateEmailRequestCopyWith<$Res> {
  _$AuthenticateEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticateEmailRequestImplCopyWith<$Res>
    implements $AuthenticateEmailRequestCopyWith<$Res> {
  factory _$$AuthenticateEmailRequestImplCopyWith(
          _$AuthenticateEmailRequestImpl value,
          $Res Function(_$AuthenticateEmailRequestImpl) then) =
      __$$AuthenticateEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$AuthenticateEmailRequestImplCopyWithImpl<$Res>
    extends _$AuthenticateEmailRequestCopyWithImpl<$Res,
        _$AuthenticateEmailRequestImpl>
    implements _$$AuthenticateEmailRequestImplCopyWith<$Res> {
  __$$AuthenticateEmailRequestImplCopyWithImpl(
      _$AuthenticateEmailRequestImpl _value,
      $Res Function(_$AuthenticateEmailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$AuthenticateEmailRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticateEmailRequestImpl implements _AuthenticateEmailRequest {
  _$AuthenticateEmailRequestImpl({required this.email, required this.code});

  factory _$AuthenticateEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticateEmailRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthenticateEmailRequest(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateEmailRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateEmailRequestImplCopyWith<_$AuthenticateEmailRequestImpl>
      get copyWith => __$$AuthenticateEmailRequestImplCopyWithImpl<
          _$AuthenticateEmailRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticateEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _AuthenticateEmailRequest implements AuthenticateEmailRequest {
  factory _AuthenticateEmailRequest(
      {required final String email,
      required final String code}) = _$AuthenticateEmailRequestImpl;

  factory _AuthenticateEmailRequest.fromJson(Map<String, dynamic> json) =
      _$AuthenticateEmailRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticateEmailRequestImplCopyWith<_$AuthenticateEmailRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthenticateEmailResponse _$AuthenticateEmailResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthenticateEmailResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateEmailResponse {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateEmailResponseCopyWith<AuthenticateEmailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateEmailResponseCopyWith<$Res> {
  factory $AuthenticateEmailResponseCopyWith(AuthenticateEmailResponse value,
          $Res Function(AuthenticateEmailResponse) then) =
      _$AuthenticateEmailResponseCopyWithImpl<$Res, AuthenticateEmailResponse>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$AuthenticateEmailResponseCopyWithImpl<$Res,
        $Val extends AuthenticateEmailResponse>
    implements $AuthenticateEmailResponseCopyWith<$Res> {
  _$AuthenticateEmailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticateEmailResponseImplCopyWith<$Res>
    implements $AuthenticateEmailResponseCopyWith<$Res> {
  factory _$$AuthenticateEmailResponseImplCopyWith(
          _$AuthenticateEmailResponseImpl value,
          $Res Function(_$AuthenticateEmailResponseImpl) then) =
      __$$AuthenticateEmailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AuthenticateEmailResponseImplCopyWithImpl<$Res>
    extends _$AuthenticateEmailResponseCopyWithImpl<$Res,
        _$AuthenticateEmailResponseImpl>
    implements _$$AuthenticateEmailResponseImplCopyWith<$Res> {
  __$$AuthenticateEmailResponseImplCopyWithImpl(
      _$AuthenticateEmailResponseImpl _value,
      $Res Function(_$AuthenticateEmailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AuthenticateEmailResponseImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticateEmailResponseImpl implements _AuthenticateEmailResponse {
  _$AuthenticateEmailResponseImpl({required this.email});

  factory _$AuthenticateEmailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticateEmailResponseImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticateEmailResponse(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateEmailResponseImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateEmailResponseImplCopyWith<_$AuthenticateEmailResponseImpl>
      get copyWith => __$$AuthenticateEmailResponseImplCopyWithImpl<
          _$AuthenticateEmailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticateEmailResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthenticateEmailResponse implements AuthenticateEmailResponse {
  factory _AuthenticateEmailResponse({required final String email}) =
      _$AuthenticateEmailResponseImpl;

  factory _AuthenticateEmailResponse.fromJson(Map<String, dynamic> json) =
      _$AuthenticateEmailResponseImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticateEmailResponseImplCopyWith<_$AuthenticateEmailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
