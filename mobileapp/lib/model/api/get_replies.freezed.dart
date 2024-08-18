// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_replies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRepliesRequest _$GetRepliesRequestFromJson(Map<String, dynamic> json) {
  return _GetRepliesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetRepliesRequest {
  String get postId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRepliesRequestCopyWith<GetRepliesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRepliesRequestCopyWith<$Res> {
  factory $GetRepliesRequestCopyWith(
          GetRepliesRequest value, $Res Function(GetRepliesRequest) then) =
      _$GetRepliesRequestCopyWithImpl<$Res, GetRepliesRequest>;
  @useResult
  $Res call({String postId, int page});
}

/// @nodoc
class _$GetRepliesRequestCopyWithImpl<$Res, $Val extends GetRepliesRequest>
    implements $GetRepliesRequestCopyWith<$Res> {
  _$GetRepliesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRepliesRequestImplCopyWith<$Res>
    implements $GetRepliesRequestCopyWith<$Res> {
  factory _$$GetRepliesRequestImplCopyWith(_$GetRepliesRequestImpl value,
          $Res Function(_$GetRepliesRequestImpl) then) =
      __$$GetRepliesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postId, int page});
}

/// @nodoc
class __$$GetRepliesRequestImplCopyWithImpl<$Res>
    extends _$GetRepliesRequestCopyWithImpl<$Res, _$GetRepliesRequestImpl>
    implements _$$GetRepliesRequestImplCopyWith<$Res> {
  __$$GetRepliesRequestImplCopyWithImpl(_$GetRepliesRequestImpl _value,
      $Res Function(_$GetRepliesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? page = null,
  }) {
    return _then(_$GetRepliesRequestImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRepliesRequestImpl implements _GetRepliesRequest {
  _$GetRepliesRequestImpl({required this.postId, required this.page});

  factory _$GetRepliesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRepliesRequestImplFromJson(json);

  @override
  final String postId;
  @override
  final int page;

  @override
  String toString() {
    return 'GetRepliesRequest(postId: $postId, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRepliesRequestImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRepliesRequestImplCopyWith<_$GetRepliesRequestImpl> get copyWith =>
      __$$GetRepliesRequestImplCopyWithImpl<_$GetRepliesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRepliesRequestImplToJson(
      this,
    );
  }
}

abstract class _GetRepliesRequest implements GetRepliesRequest {
  factory _GetRepliesRequest(
      {required final String postId,
      required final int page}) = _$GetRepliesRequestImpl;

  factory _GetRepliesRequest.fromJson(Map<String, dynamic> json) =
      _$GetRepliesRequestImpl.fromJson;

  @override
  String get postId;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$GetRepliesRequestImplCopyWith<_$GetRepliesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetRepliesResponse _$GetRepliesResponseFromJson(Map<String, dynamic> json) {
  return _GetRepliesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetRepliesResponse {
  List<PostDigest> get replies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRepliesResponseCopyWith<GetRepliesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRepliesResponseCopyWith<$Res> {
  factory $GetRepliesResponseCopyWith(
          GetRepliesResponse value, $Res Function(GetRepliesResponse) then) =
      _$GetRepliesResponseCopyWithImpl<$Res, GetRepliesResponse>;
  @useResult
  $Res call({List<PostDigest> replies});
}

/// @nodoc
class _$GetRepliesResponseCopyWithImpl<$Res, $Val extends GetRepliesResponse>
    implements $GetRepliesResponseCopyWith<$Res> {
  _$GetRepliesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<PostDigest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRepliesResponseImplCopyWith<$Res>
    implements $GetRepliesResponseCopyWith<$Res> {
  factory _$$GetRepliesResponseImplCopyWith(_$GetRepliesResponseImpl value,
          $Res Function(_$GetRepliesResponseImpl) then) =
      __$$GetRepliesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostDigest> replies});
}

/// @nodoc
class __$$GetRepliesResponseImplCopyWithImpl<$Res>
    extends _$GetRepliesResponseCopyWithImpl<$Res, _$GetRepliesResponseImpl>
    implements _$$GetRepliesResponseImplCopyWith<$Res> {
  __$$GetRepliesResponseImplCopyWithImpl(_$GetRepliesResponseImpl _value,
      $Res Function(_$GetRepliesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replies = null,
  }) {
    return _then(_$GetRepliesResponseImpl(
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<PostDigest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRepliesResponseImpl implements _GetRepliesResponse {
  _$GetRepliesResponseImpl({required final List<PostDigest> replies})
      : _replies = replies;

  factory _$GetRepliesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRepliesResponseImplFromJson(json);

  final List<PostDigest> _replies;
  @override
  List<PostDigest> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'GetRepliesResponse(replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRepliesResponseImpl &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRepliesResponseImplCopyWith<_$GetRepliesResponseImpl> get copyWith =>
      __$$GetRepliesResponseImplCopyWithImpl<_$GetRepliesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRepliesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetRepliesResponse implements GetRepliesResponse {
  factory _GetRepliesResponse({required final List<PostDigest> replies}) =
      _$GetRepliesResponseImpl;

  factory _GetRepliesResponse.fromJson(Map<String, dynamic> json) =
      _$GetRepliesResponseImpl.fromJson;

  @override
  List<PostDigest> get replies;
  @override
  @JsonKey(ignore: true)
  _$$GetRepliesResponseImplCopyWith<_$GetRepliesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
