// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_auth_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendAuthCodeRequest _$SendAuthCodeRequestFromJson(Map<String, dynamic> json) {
  return _SendAuthCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$SendAuthCodeRequest {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendAuthCodeRequestCopyWith<SendAuthCodeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendAuthCodeRequestCopyWith<$Res> {
  factory $SendAuthCodeRequestCopyWith(
          SendAuthCodeRequest value, $Res Function(SendAuthCodeRequest) then) =
      _$SendAuthCodeRequestCopyWithImpl<$Res, SendAuthCodeRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SendAuthCodeRequestCopyWithImpl<$Res, $Val extends SendAuthCodeRequest>
    implements $SendAuthCodeRequestCopyWith<$Res> {
  _$SendAuthCodeRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$SendAuthCodeRequestImplCopyWith<$Res>
    implements $SendAuthCodeRequestCopyWith<$Res> {
  factory _$$SendAuthCodeRequestImplCopyWith(_$SendAuthCodeRequestImpl value,
          $Res Function(_$SendAuthCodeRequestImpl) then) =
      __$$SendAuthCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendAuthCodeRequestImplCopyWithImpl<$Res>
    extends _$SendAuthCodeRequestCopyWithImpl<$Res, _$SendAuthCodeRequestImpl>
    implements _$$SendAuthCodeRequestImplCopyWith<$Res> {
  __$$SendAuthCodeRequestImplCopyWithImpl(_$SendAuthCodeRequestImpl _value,
      $Res Function(_$SendAuthCodeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendAuthCodeRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendAuthCodeRequestImpl implements _SendAuthCodeRequest {
  _$SendAuthCodeRequestImpl({required this.email});

  factory _$SendAuthCodeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendAuthCodeRequestImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'SendAuthCodeRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAuthCodeRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendAuthCodeRequestImplCopyWith<_$SendAuthCodeRequestImpl> get copyWith =>
      __$$SendAuthCodeRequestImplCopyWithImpl<_$SendAuthCodeRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendAuthCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _SendAuthCodeRequest implements SendAuthCodeRequest {
  factory _SendAuthCodeRequest({required final String email}) =
      _$SendAuthCodeRequestImpl;

  factory _SendAuthCodeRequest.fromJson(Map<String, dynamic> json) =
      _$SendAuthCodeRequestImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SendAuthCodeRequestImplCopyWith<_$SendAuthCodeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendAuthCodeResponse _$SendAuthCodeResponseFromJson(Map<String, dynamic> json) {
  return _SendAuthCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$SendAuthCodeResponse {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendAuthCodeResponseCopyWith<SendAuthCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendAuthCodeResponseCopyWith<$Res> {
  factory $SendAuthCodeResponseCopyWith(SendAuthCodeResponse value,
          $Res Function(SendAuthCodeResponse) then) =
      _$SendAuthCodeResponseCopyWithImpl<$Res, SendAuthCodeResponse>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SendAuthCodeResponseCopyWithImpl<$Res,
        $Val extends SendAuthCodeResponse>
    implements $SendAuthCodeResponseCopyWith<$Res> {
  _$SendAuthCodeResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$SendAuthCodeResponseImplCopyWith<$Res>
    implements $SendAuthCodeResponseCopyWith<$Res> {
  factory _$$SendAuthCodeResponseImplCopyWith(_$SendAuthCodeResponseImpl value,
          $Res Function(_$SendAuthCodeResponseImpl) then) =
      __$$SendAuthCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendAuthCodeResponseImplCopyWithImpl<$Res>
    extends _$SendAuthCodeResponseCopyWithImpl<$Res, _$SendAuthCodeResponseImpl>
    implements _$$SendAuthCodeResponseImplCopyWith<$Res> {
  __$$SendAuthCodeResponseImplCopyWithImpl(_$SendAuthCodeResponseImpl _value,
      $Res Function(_$SendAuthCodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendAuthCodeResponseImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendAuthCodeResponseImpl implements _SendAuthCodeResponse {
  _$SendAuthCodeResponseImpl({required this.email});

  factory _$SendAuthCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendAuthCodeResponseImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'SendAuthCodeResponse(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAuthCodeResponseImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendAuthCodeResponseImplCopyWith<_$SendAuthCodeResponseImpl>
      get copyWith =>
          __$$SendAuthCodeResponseImplCopyWithImpl<_$SendAuthCodeResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendAuthCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _SendAuthCodeResponse implements SendAuthCodeResponse {
  factory _SendAuthCodeResponse({required final String email}) =
      _$SendAuthCodeResponseImpl;

  factory _SendAuthCodeResponse.fromJson(Map<String, dynamic> json) =
      _$SendAuthCodeResponseImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SendAuthCodeResponseImplCopyWith<_$SendAuthCodeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
