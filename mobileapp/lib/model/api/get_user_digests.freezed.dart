// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_digests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUserDigestsRequest _$GetUserDigestsRequestFromJson(
    Map<String, dynamic> json) {
  return _GetUserDigestsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetUserDigestsRequest {
  int get page => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserDigestsRequestCopyWith<GetUserDigestsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserDigestsRequestCopyWith<$Res> {
  factory $GetUserDigestsRequestCopyWith(GetUserDigestsRequest value,
          $Res Function(GetUserDigestsRequest) then) =
      _$GetUserDigestsRequestCopyWithImpl<$Res, GetUserDigestsRequest>;
  @useResult
  $Res call({int page, String userId});
}

/// @nodoc
class _$GetUserDigestsRequestCopyWithImpl<$Res,
        $Val extends GetUserDigestsRequest>
    implements $GetUserDigestsRequestCopyWith<$Res> {
  _$GetUserDigestsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserDigestsRequestImplCopyWith<$Res>
    implements $GetUserDigestsRequestCopyWith<$Res> {
  factory _$$GetUserDigestsRequestImplCopyWith(
          _$GetUserDigestsRequestImpl value,
          $Res Function(_$GetUserDigestsRequestImpl) then) =
      __$$GetUserDigestsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, String userId});
}

/// @nodoc
class __$$GetUserDigestsRequestImplCopyWithImpl<$Res>
    extends _$GetUserDigestsRequestCopyWithImpl<$Res,
        _$GetUserDigestsRequestImpl>
    implements _$$GetUserDigestsRequestImplCopyWith<$Res> {
  __$$GetUserDigestsRequestImplCopyWithImpl(_$GetUserDigestsRequestImpl _value,
      $Res Function(_$GetUserDigestsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? userId = null,
  }) {
    return _then(_$GetUserDigestsRequestImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserDigestsRequestImpl implements _GetUserDigestsRequest {
  _$GetUserDigestsRequestImpl({required this.page, required this.userId});

  factory _$GetUserDigestsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserDigestsRequestImplFromJson(json);

  @override
  final int page;
  @override
  final String userId;

  @override
  String toString() {
    return 'GetUserDigestsRequest(page: $page, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDigestsRequestImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDigestsRequestImplCopyWith<_$GetUserDigestsRequestImpl>
      get copyWith => __$$GetUserDigestsRequestImplCopyWithImpl<
          _$GetUserDigestsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserDigestsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetUserDigestsRequest implements GetUserDigestsRequest {
  factory _GetUserDigestsRequest(
      {required final int page,
      required final String userId}) = _$GetUserDigestsRequestImpl;

  factory _GetUserDigestsRequest.fromJson(Map<String, dynamic> json) =
      _$GetUserDigestsRequestImpl.fromJson;

  @override
  int get page;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$GetUserDigestsRequestImplCopyWith<_$GetUserDigestsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetUserDigestsResponse _$GetUserDigestsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetUserDigestsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetUserDigestsResponse {
  List<PostDigest> get digests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserDigestsResponseCopyWith<GetUserDigestsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserDigestsResponseCopyWith<$Res> {
  factory $GetUserDigestsResponseCopyWith(GetUserDigestsResponse value,
          $Res Function(GetUserDigestsResponse) then) =
      _$GetUserDigestsResponseCopyWithImpl<$Res, GetUserDigestsResponse>;
  @useResult
  $Res call({List<PostDigest> digests});
}

/// @nodoc
class _$GetUserDigestsResponseCopyWithImpl<$Res,
        $Val extends GetUserDigestsResponse>
    implements $GetUserDigestsResponseCopyWith<$Res> {
  _$GetUserDigestsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digests = null,
  }) {
    return _then(_value.copyWith(
      digests: null == digests
          ? _value.digests
          : digests // ignore: cast_nullable_to_non_nullable
              as List<PostDigest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserDigestsResponseImplCopyWith<$Res>
    implements $GetUserDigestsResponseCopyWith<$Res> {
  factory _$$GetUserDigestsResponseImplCopyWith(
          _$GetUserDigestsResponseImpl value,
          $Res Function(_$GetUserDigestsResponseImpl) then) =
      __$$GetUserDigestsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostDigest> digests});
}

/// @nodoc
class __$$GetUserDigestsResponseImplCopyWithImpl<$Res>
    extends _$GetUserDigestsResponseCopyWithImpl<$Res,
        _$GetUserDigestsResponseImpl>
    implements _$$GetUserDigestsResponseImplCopyWith<$Res> {
  __$$GetUserDigestsResponseImplCopyWithImpl(
      _$GetUserDigestsResponseImpl _value,
      $Res Function(_$GetUserDigestsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digests = null,
  }) {
    return _then(_$GetUserDigestsResponseImpl(
      digests: null == digests
          ? _value._digests
          : digests // ignore: cast_nullable_to_non_nullable
              as List<PostDigest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserDigestsResponseImpl implements _GetUserDigestsResponse {
  _$GetUserDigestsResponseImpl({required final List<PostDigest> digests})
      : _digests = digests;

  factory _$GetUserDigestsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserDigestsResponseImplFromJson(json);

  final List<PostDigest> _digests;
  @override
  List<PostDigest> get digests {
    if (_digests is EqualUnmodifiableListView) return _digests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_digests);
  }

  @override
  String toString() {
    return 'GetUserDigestsResponse(digests: $digests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDigestsResponseImpl &&
            const DeepCollectionEquality().equals(other._digests, _digests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_digests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDigestsResponseImplCopyWith<_$GetUserDigestsResponseImpl>
      get copyWith => __$$GetUserDigestsResponseImplCopyWithImpl<
          _$GetUserDigestsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserDigestsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetUserDigestsResponse implements GetUserDigestsResponse {
  factory _GetUserDigestsResponse({required final List<PostDigest> digests}) =
      _$GetUserDigestsResponseImpl;

  factory _GetUserDigestsResponse.fromJson(Map<String, dynamic> json) =
      _$GetUserDigestsResponseImpl.fromJson;

  @override
  List<PostDigest> get digests;
  @override
  @JsonKey(ignore: true)
  _$$GetUserDigestsResponseImplCopyWith<_$GetUserDigestsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
