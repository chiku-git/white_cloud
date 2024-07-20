// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_posts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchPostsRequest _$SearchPostsRequestFromJson(Map<String, dynamic> json) {
  return _SearchPostsRequest.fromJson(json);
}

/// @nodoc
mixin _$SearchPostsRequest {
  String get keyword => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPostsRequestCopyWith<SearchPostsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPostsRequestCopyWith<$Res> {
  factory $SearchPostsRequestCopyWith(
          SearchPostsRequest value, $Res Function(SearchPostsRequest) then) =
      _$SearchPostsRequestCopyWithImpl<$Res, SearchPostsRequest>;
  @useResult
  $Res call({String keyword, int page});
}

/// @nodoc
class _$SearchPostsRequestCopyWithImpl<$Res, $Val extends SearchPostsRequest>
    implements $SearchPostsRequestCopyWith<$Res> {
  _$SearchPostsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPostsRequestImplCopyWith<$Res>
    implements $SearchPostsRequestCopyWith<$Res> {
  factory _$$SearchPostsRequestImplCopyWith(_$SearchPostsRequestImpl value,
          $Res Function(_$SearchPostsRequestImpl) then) =
      __$$SearchPostsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword, int page});
}

/// @nodoc
class __$$SearchPostsRequestImplCopyWithImpl<$Res>
    extends _$SearchPostsRequestCopyWithImpl<$Res, _$SearchPostsRequestImpl>
    implements _$$SearchPostsRequestImplCopyWith<$Res> {
  __$$SearchPostsRequestImplCopyWithImpl(_$SearchPostsRequestImpl _value,
      $Res Function(_$SearchPostsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = null,
  }) {
    return _then(_$SearchPostsRequestImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
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
class _$SearchPostsRequestImpl implements _SearchPostsRequest {
  _$SearchPostsRequestImpl({required this.keyword, required this.page});

  factory _$SearchPostsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchPostsRequestImplFromJson(json);

  @override
  final String keyword;
  @override
  final int page;

  @override
  String toString() {
    return 'SearchPostsRequest(keyword: $keyword, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPostsRequestImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keyword, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPostsRequestImplCopyWith<_$SearchPostsRequestImpl> get copyWith =>
      __$$SearchPostsRequestImplCopyWithImpl<_$SearchPostsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchPostsRequestImplToJson(
      this,
    );
  }
}

abstract class _SearchPostsRequest implements SearchPostsRequest {
  factory _SearchPostsRequest(
      {required final String keyword,
      required final int page}) = _$SearchPostsRequestImpl;

  factory _SearchPostsRequest.fromJson(Map<String, dynamic> json) =
      _$SearchPostsRequestImpl.fromJson;

  @override
  String get keyword;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$SearchPostsRequestImplCopyWith<_$SearchPostsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchPostsResponse _$SearchPostsResponseFromJson(Map<String, dynamic> json) {
  return _SearchPostsResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchPostsResponse {
  List<PostInfo> get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPostsResponseCopyWith<SearchPostsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPostsResponseCopyWith<$Res> {
  factory $SearchPostsResponseCopyWith(
          SearchPostsResponse value, $Res Function(SearchPostsResponse) then) =
      _$SearchPostsResponseCopyWithImpl<$Res, SearchPostsResponse>;
  @useResult
  $Res call({List<PostInfo> posts});
}

/// @nodoc
class _$SearchPostsResponseCopyWithImpl<$Res, $Val extends SearchPostsResponse>
    implements $SearchPostsResponseCopyWith<$Res> {
  _$SearchPostsResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchPostsResponseImplCopyWith<$Res>
    implements $SearchPostsResponseCopyWith<$Res> {
  factory _$$SearchPostsResponseImplCopyWith(_$SearchPostsResponseImpl value,
          $Res Function(_$SearchPostsResponseImpl) then) =
      __$$SearchPostsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostInfo> posts});
}

/// @nodoc
class __$$SearchPostsResponseImplCopyWithImpl<$Res>
    extends _$SearchPostsResponseCopyWithImpl<$Res, _$SearchPostsResponseImpl>
    implements _$$SearchPostsResponseImplCopyWith<$Res> {
  __$$SearchPostsResponseImplCopyWithImpl(_$SearchPostsResponseImpl _value,
      $Res Function(_$SearchPostsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$SearchPostsResponseImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchPostsResponseImpl implements _SearchPostsResponse {
  _$SearchPostsResponseImpl({required final List<PostInfo> posts})
      : _posts = posts;

  factory _$SearchPostsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchPostsResponseImplFromJson(json);

  final List<PostInfo> _posts;
  @override
  List<PostInfo> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'SearchPostsResponse(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPostsResponseImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPostsResponseImplCopyWith<_$SearchPostsResponseImpl> get copyWith =>
      __$$SearchPostsResponseImplCopyWithImpl<_$SearchPostsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchPostsResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchPostsResponse implements SearchPostsResponse {
  factory _SearchPostsResponse({required final List<PostInfo> posts}) =
      _$SearchPostsResponseImpl;

  factory _SearchPostsResponse.fromJson(Map<String, dynamic> json) =
      _$SearchPostsResponseImpl.fromJson;

  @override
  List<PostInfo> get posts;
  @override
  @JsonKey(ignore: true)
  _$$SearchPostsResponseImplCopyWith<_$SearchPostsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
