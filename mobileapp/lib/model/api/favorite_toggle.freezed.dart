// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_toggle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteToggleRequest _$FavoriteToggleRequestFromJson(
    Map<String, dynamic> json) {
  return _FavoriteToggleRequest.fromJson(json);
}

/// @nodoc
mixin _$FavoriteToggleRequest {
  String get postId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteToggleRequestCopyWith<FavoriteToggleRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteToggleRequestCopyWith<$Res> {
  factory $FavoriteToggleRequestCopyWith(FavoriteToggleRequest value,
          $Res Function(FavoriteToggleRequest) then) =
      _$FavoriteToggleRequestCopyWithImpl<$Res, FavoriteToggleRequest>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class _$FavoriteToggleRequestCopyWithImpl<$Res,
        $Val extends FavoriteToggleRequest>
    implements $FavoriteToggleRequestCopyWith<$Res> {
  _$FavoriteToggleRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteToggleRequestImplCopyWith<$Res>
    implements $FavoriteToggleRequestCopyWith<$Res> {
  factory _$$FavoriteToggleRequestImplCopyWith(
          _$FavoriteToggleRequestImpl value,
          $Res Function(_$FavoriteToggleRequestImpl) then) =
      __$$FavoriteToggleRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$FavoriteToggleRequestImplCopyWithImpl<$Res>
    extends _$FavoriteToggleRequestCopyWithImpl<$Res,
        _$FavoriteToggleRequestImpl>
    implements _$$FavoriteToggleRequestImplCopyWith<$Res> {
  __$$FavoriteToggleRequestImplCopyWithImpl(_$FavoriteToggleRequestImpl _value,
      $Res Function(_$FavoriteToggleRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$FavoriteToggleRequestImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteToggleRequestImpl implements _FavoriteToggleRequest {
  _$FavoriteToggleRequestImpl({required this.postId});

  factory _$FavoriteToggleRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteToggleRequestImplFromJson(json);

  @override
  final String postId;

  @override
  String toString() {
    return 'FavoriteToggleRequest(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteToggleRequestImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteToggleRequestImplCopyWith<_$FavoriteToggleRequestImpl>
      get copyWith => __$$FavoriteToggleRequestImplCopyWithImpl<
          _$FavoriteToggleRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteToggleRequestImplToJson(
      this,
    );
  }
}

abstract class _FavoriteToggleRequest implements FavoriteToggleRequest {
  factory _FavoriteToggleRequest({required final String postId}) =
      _$FavoriteToggleRequestImpl;

  factory _FavoriteToggleRequest.fromJson(Map<String, dynamic> json) =
      _$FavoriteToggleRequestImpl.fromJson;

  @override
  String get postId;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteToggleRequestImplCopyWith<_$FavoriteToggleRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FavoriteToggleResponse _$FavoriteToggleResponseFromJson(
    Map<String, dynamic> json) {
  return _FavoriteToggleResponse.fromJson(json);
}

/// @nodoc
mixin _$FavoriteToggleResponse {
  PostDigest get digest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteToggleResponseCopyWith<FavoriteToggleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteToggleResponseCopyWith<$Res> {
  factory $FavoriteToggleResponseCopyWith(FavoriteToggleResponse value,
          $Res Function(FavoriteToggleResponse) then) =
      _$FavoriteToggleResponseCopyWithImpl<$Res, FavoriteToggleResponse>;
  @useResult
  $Res call({PostDigest digest});

  $PostDigestCopyWith<$Res> get digest;
}

/// @nodoc
class _$FavoriteToggleResponseCopyWithImpl<$Res,
        $Val extends FavoriteToggleResponse>
    implements $FavoriteToggleResponseCopyWith<$Res> {
  _$FavoriteToggleResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$FavoriteToggleResponseImplCopyWith<$Res>
    implements $FavoriteToggleResponseCopyWith<$Res> {
  factory _$$FavoriteToggleResponseImplCopyWith(
          _$FavoriteToggleResponseImpl value,
          $Res Function(_$FavoriteToggleResponseImpl) then) =
      __$$FavoriteToggleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostDigest digest});

  @override
  $PostDigestCopyWith<$Res> get digest;
}

/// @nodoc
class __$$FavoriteToggleResponseImplCopyWithImpl<$Res>
    extends _$FavoriteToggleResponseCopyWithImpl<$Res,
        _$FavoriteToggleResponseImpl>
    implements _$$FavoriteToggleResponseImplCopyWith<$Res> {
  __$$FavoriteToggleResponseImplCopyWithImpl(
      _$FavoriteToggleResponseImpl _value,
      $Res Function(_$FavoriteToggleResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digest = null,
  }) {
    return _then(_$FavoriteToggleResponseImpl(
      digest: null == digest
          ? _value.digest
          : digest // ignore: cast_nullable_to_non_nullable
              as PostDigest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteToggleResponseImpl implements _FavoriteToggleResponse {
  _$FavoriteToggleResponseImpl({required this.digest});

  factory _$FavoriteToggleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteToggleResponseImplFromJson(json);

  @override
  final PostDigest digest;

  @override
  String toString() {
    return 'FavoriteToggleResponse(digest: $digest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteToggleResponseImpl &&
            (identical(other.digest, digest) || other.digest == digest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, digest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteToggleResponseImplCopyWith<_$FavoriteToggleResponseImpl>
      get copyWith => __$$FavoriteToggleResponseImplCopyWithImpl<
          _$FavoriteToggleResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteToggleResponseImplToJson(
      this,
    );
  }
}

abstract class _FavoriteToggleResponse implements FavoriteToggleResponse {
  factory _FavoriteToggleResponse({required final PostDigest digest}) =
      _$FavoriteToggleResponseImpl;

  factory _FavoriteToggleResponse.fromJson(Map<String, dynamic> json) =
      _$FavoriteToggleResponseImpl.fromJson;

  @override
  PostDigest get digest;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteToggleResponseImplCopyWith<_$FavoriteToggleResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
