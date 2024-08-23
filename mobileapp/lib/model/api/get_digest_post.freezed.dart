// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_digest_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDigestPostRequest _$GetDigestPostRequestFromJson(Map<String, dynamic> json) {
  return _GetDigestPostRequest.fromJson(json);
}

/// @nodoc
mixin _$GetDigestPostRequest {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDigestPostRequestCopyWith<GetDigestPostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDigestPostRequestCopyWith<$Res> {
  factory $GetDigestPostRequestCopyWith(GetDigestPostRequest value,
          $Res Function(GetDigestPostRequest) then) =
      _$GetDigestPostRequestCopyWithImpl<$Res, GetDigestPostRequest>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$GetDigestPostRequestCopyWithImpl<$Res,
        $Val extends GetDigestPostRequest>
    implements $GetDigestPostRequestCopyWith<$Res> {
  _$GetDigestPostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDigestPostRequestImplCopyWith<$Res>
    implements $GetDigestPostRequestCopyWith<$Res> {
  factory _$$GetDigestPostRequestImplCopyWith(_$GetDigestPostRequestImpl value,
          $Res Function(_$GetDigestPostRequestImpl) then) =
      __$$GetDigestPostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetDigestPostRequestImplCopyWithImpl<$Res>
    extends _$GetDigestPostRequestCopyWithImpl<$Res, _$GetDigestPostRequestImpl>
    implements _$$GetDigestPostRequestImplCopyWith<$Res> {
  __$$GetDigestPostRequestImplCopyWithImpl(_$GetDigestPostRequestImpl _value,
      $Res Function(_$GetDigestPostRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetDigestPostRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDigestPostRequestImpl implements _GetDigestPostRequest {
  _$GetDigestPostRequestImpl({required this.id});

  factory _$GetDigestPostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDigestPostRequestImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'GetDigestPostRequest(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDigestPostRequestImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDigestPostRequestImplCopyWith<_$GetDigestPostRequestImpl>
      get copyWith =>
          __$$GetDigestPostRequestImplCopyWithImpl<_$GetDigestPostRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDigestPostRequestImplToJson(
      this,
    );
  }
}

abstract class _GetDigestPostRequest implements GetDigestPostRequest {
  factory _GetDigestPostRequest({required final String id}) =
      _$GetDigestPostRequestImpl;

  factory _GetDigestPostRequest.fromJson(Map<String, dynamic> json) =
      _$GetDigestPostRequestImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetDigestPostRequestImplCopyWith<_$GetDigestPostRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDigestPostResponse _$GetDigestPostResponseFromJson(
    Map<String, dynamic> json) {
  return _GetDigestPostResponse.fromJson(json);
}

/// @nodoc
mixin _$GetDigestPostResponse {
  PostDigest get digest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDigestPostResponseCopyWith<GetDigestPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDigestPostResponseCopyWith<$Res> {
  factory $GetDigestPostResponseCopyWith(GetDigestPostResponse value,
          $Res Function(GetDigestPostResponse) then) =
      _$GetDigestPostResponseCopyWithImpl<$Res, GetDigestPostResponse>;
  @useResult
  $Res call({PostDigest digest});

  $PostDigestCopyWith<$Res> get digest;
}

/// @nodoc
class _$GetDigestPostResponseCopyWithImpl<$Res,
        $Val extends GetDigestPostResponse>
    implements $GetDigestPostResponseCopyWith<$Res> {
  _$GetDigestPostResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digest = null,
  }) {
    return _then(_value.copyWith(
      digest: null == digest
          ? _value.digest
          : digest // ignore: cast_nullable_to_non_nullable
              as PostDigest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostDigestCopyWith<$Res> get digest {
    return $PostDigestCopyWith<$Res>(_value.digest, (value) {
      return _then(_value.copyWith(digest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetDigestPostResponseImplCopyWith<$Res>
    implements $GetDigestPostResponseCopyWith<$Res> {
  factory _$$GetDigestPostResponseImplCopyWith(
          _$GetDigestPostResponseImpl value,
          $Res Function(_$GetDigestPostResponseImpl) then) =
      __$$GetDigestPostResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostDigest digest});

  @override
  $PostDigestCopyWith<$Res> get digest;
}

/// @nodoc
class __$$GetDigestPostResponseImplCopyWithImpl<$Res>
    extends _$GetDigestPostResponseCopyWithImpl<$Res,
        _$GetDigestPostResponseImpl>
    implements _$$GetDigestPostResponseImplCopyWith<$Res> {
  __$$GetDigestPostResponseImplCopyWithImpl(_$GetDigestPostResponseImpl _value,
      $Res Function(_$GetDigestPostResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digest = null,
  }) {
    return _then(_$GetDigestPostResponseImpl(
      digest: null == digest
          ? _value.digest
          : digest // ignore: cast_nullable_to_non_nullable
              as PostDigest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDigestPostResponseImpl implements _GetDigestPostResponse {
  _$GetDigestPostResponseImpl({required this.digest});

  factory _$GetDigestPostResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDigestPostResponseImplFromJson(json);

  @override
  final PostDigest digest;

  @override
  String toString() {
    return 'GetDigestPostResponse(digest: $digest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDigestPostResponseImpl &&
            (identical(other.digest, digest) || other.digest == digest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, digest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDigestPostResponseImplCopyWith<_$GetDigestPostResponseImpl>
      get copyWith => __$$GetDigestPostResponseImplCopyWithImpl<
          _$GetDigestPostResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDigestPostResponseImplToJson(
      this,
    );
  }
}

abstract class _GetDigestPostResponse implements GetDigestPostResponse {
  factory _GetDigestPostResponse({required final PostDigest digest}) =
      _$GetDigestPostResponseImpl;

  factory _GetDigestPostResponse.fromJson(Map<String, dynamic> json) =
      _$GetDigestPostResponseImpl.fromJson;

  @override
  PostDigest get digest;
  @override
  @JsonKey(ignore: true)
  _$$GetDigestPostResponseImplCopyWith<_$GetDigestPostResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
