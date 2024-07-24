// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_digest_posts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDigestPostsRequest _$GetDigestPostsRequestFromJson(
    Map<String, dynamic> json) {
  return _GetDigestPostsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetDigestPostsRequest {
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDigestPostsRequestCopyWith<GetDigestPostsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDigestPostsRequestCopyWith<$Res> {
  factory $GetDigestPostsRequestCopyWith(GetDigestPostsRequest value,
          $Res Function(GetDigestPostsRequest) then) =
      _$GetDigestPostsRequestCopyWithImpl<$Res, GetDigestPostsRequest>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$GetDigestPostsRequestCopyWithImpl<$Res,
        $Val extends GetDigestPostsRequest>
    implements $GetDigestPostsRequestCopyWith<$Res> {
  _$GetDigestPostsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDigestPostsRequestImplCopyWith<$Res>
    implements $GetDigestPostsRequestCopyWith<$Res> {
  factory _$$GetDigestPostsRequestImplCopyWith(
          _$GetDigestPostsRequestImpl value,
          $Res Function(_$GetDigestPostsRequestImpl) then) =
      __$$GetDigestPostsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$GetDigestPostsRequestImplCopyWithImpl<$Res>
    extends _$GetDigestPostsRequestCopyWithImpl<$Res,
        _$GetDigestPostsRequestImpl>
    implements _$$GetDigestPostsRequestImplCopyWith<$Res> {
  __$$GetDigestPostsRequestImplCopyWithImpl(_$GetDigestPostsRequestImpl _value,
      $Res Function(_$GetDigestPostsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$GetDigestPostsRequestImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDigestPostsRequestImpl implements _GetDigestPostsRequest {
  _$GetDigestPostsRequestImpl({required this.page});

  factory _$GetDigestPostsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDigestPostsRequestImplFromJson(json);

  @override
  final int page;

  @override
  String toString() {
    return 'GetDigestPostsRequest(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDigestPostsRequestImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDigestPostsRequestImplCopyWith<_$GetDigestPostsRequestImpl>
      get copyWith => __$$GetDigestPostsRequestImplCopyWithImpl<
          _$GetDigestPostsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDigestPostsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetDigestPostsRequest implements GetDigestPostsRequest {
  factory _GetDigestPostsRequest({required final int page}) =
      _$GetDigestPostsRequestImpl;

  factory _GetDigestPostsRequest.fromJson(Map<String, dynamic> json) =
      _$GetDigestPostsRequestImpl.fromJson;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$GetDigestPostsRequestImplCopyWith<_$GetDigestPostsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDigestPostsResponse _$GetDigestPostsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetDigestPostsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetDigestPostsResponse {
  List<PostInfo> get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDigestPostsResponseCopyWith<GetDigestPostsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDigestPostsResponseCopyWith<$Res> {
  factory $GetDigestPostsResponseCopyWith(GetDigestPostsResponse value,
          $Res Function(GetDigestPostsResponse) then) =
      _$GetDigestPostsResponseCopyWithImpl<$Res, GetDigestPostsResponse>;
  @useResult
  $Res call({List<PostInfo> posts});
}

/// @nodoc
class _$GetDigestPostsResponseCopyWithImpl<$Res,
        $Val extends GetDigestPostsResponse>
    implements $GetDigestPostsResponseCopyWith<$Res> {
  _$GetDigestPostsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDigestPostsResponseImplCopyWith<$Res>
    implements $GetDigestPostsResponseCopyWith<$Res> {
  factory _$$GetDigestPostsResponseImplCopyWith(
          _$GetDigestPostsResponseImpl value,
          $Res Function(_$GetDigestPostsResponseImpl) then) =
      __$$GetDigestPostsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostInfo> posts});
}

/// @nodoc
class __$$GetDigestPostsResponseImplCopyWithImpl<$Res>
    extends _$GetDigestPostsResponseCopyWithImpl<$Res,
        _$GetDigestPostsResponseImpl>
    implements _$$GetDigestPostsResponseImplCopyWith<$Res> {
  __$$GetDigestPostsResponseImplCopyWithImpl(
      _$GetDigestPostsResponseImpl _value,
      $Res Function(_$GetDigestPostsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$GetDigestPostsResponseImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDigestPostsResponseImpl implements _GetDigestPostsResponse {
  _$GetDigestPostsResponseImpl({required final List<PostInfo> posts})
      : _posts = posts;

  factory _$GetDigestPostsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDigestPostsResponseImplFromJson(json);

  final List<PostInfo> _posts;
  @override
  List<PostInfo> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'GetDigestPostsResponse(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDigestPostsResponseImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDigestPostsResponseImplCopyWith<_$GetDigestPostsResponseImpl>
      get copyWith => __$$GetDigestPostsResponseImplCopyWithImpl<
          _$GetDigestPostsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDigestPostsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetDigestPostsResponse implements GetDigestPostsResponse {
  factory _GetDigestPostsResponse({required final List<PostInfo> posts}) =
      _$GetDigestPostsResponseImpl;

  factory _GetDigestPostsResponse.fromJson(Map<String, dynamic> json) =
      _$GetDigestPostsResponseImpl.fromJson;

  @override
  List<PostInfo> get posts;
  @override
  @JsonKey(ignore: true)
  _$$GetDigestPostsResponseImplCopyWith<_$GetDigestPostsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
