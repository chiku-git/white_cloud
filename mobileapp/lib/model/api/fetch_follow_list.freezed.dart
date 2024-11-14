// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_follow_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchFollowListRequest _$FetchFollowListRequestFromJson(
    Map<String, dynamic> json) {
  return _FetchFollowListRequest.fromJson(json);
}

/// @nodoc
mixin _$FetchFollowListRequest {
  String get userId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchFollowListRequestCopyWith<FetchFollowListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchFollowListRequestCopyWith<$Res> {
  factory $FetchFollowListRequestCopyWith(FetchFollowListRequest value,
          $Res Function(FetchFollowListRequest) then) =
      _$FetchFollowListRequestCopyWithImpl<$Res, FetchFollowListRequest>;
  @useResult
  $Res call({String userId, int page});
}

/// @nodoc
class _$FetchFollowListRequestCopyWithImpl<$Res,
        $Val extends FetchFollowListRequest>
    implements $FetchFollowListRequestCopyWith<$Res> {
  _$FetchFollowListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchFollowListRequestImplCopyWith<$Res>
    implements $FetchFollowListRequestCopyWith<$Res> {
  factory _$$FetchFollowListRequestImplCopyWith(
          _$FetchFollowListRequestImpl value,
          $Res Function(_$FetchFollowListRequestImpl) then) =
      __$$FetchFollowListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int page});
}

/// @nodoc
class __$$FetchFollowListRequestImplCopyWithImpl<$Res>
    extends _$FetchFollowListRequestCopyWithImpl<$Res,
        _$FetchFollowListRequestImpl>
    implements _$$FetchFollowListRequestImplCopyWith<$Res> {
  __$$FetchFollowListRequestImplCopyWithImpl(
      _$FetchFollowListRequestImpl _value,
      $Res Function(_$FetchFollowListRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
  }) {
    return _then(_$FetchFollowListRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$FetchFollowListRequestImpl implements _FetchFollowListRequest {
  _$FetchFollowListRequestImpl({required this.userId, required this.page});

  factory _$FetchFollowListRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchFollowListRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final int page;

  @override
  String toString() {
    return 'FetchFollowListRequest(userId: $userId, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFollowListRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFollowListRequestImplCopyWith<_$FetchFollowListRequestImpl>
      get copyWith => __$$FetchFollowListRequestImplCopyWithImpl<
          _$FetchFollowListRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchFollowListRequestImplToJson(
      this,
    );
  }
}

abstract class _FetchFollowListRequest implements FetchFollowListRequest {
  factory _FetchFollowListRequest(
      {required final String userId,
      required final int page}) = _$FetchFollowListRequestImpl;

  factory _FetchFollowListRequest.fromJson(Map<String, dynamic> json) =
      _$FetchFollowListRequestImpl.fromJson;

  @override
  String get userId;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$FetchFollowListRequestImplCopyWith<_$FetchFollowListRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchFollowersResponse _$FetchFollowersResponseFromJson(
    Map<String, dynamic> json) {
  return _FetchFollowersResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchFollowersResponse {
  List<UserMiniInfo> get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchFollowersResponseCopyWith<FetchFollowersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchFollowersResponseCopyWith<$Res> {
  factory $FetchFollowersResponseCopyWith(FetchFollowersResponse value,
          $Res Function(FetchFollowersResponse) then) =
      _$FetchFollowersResponseCopyWithImpl<$Res, FetchFollowersResponse>;
  @useResult
  $Res call({List<UserMiniInfo> followers});
}

/// @nodoc
class _$FetchFollowersResponseCopyWithImpl<$Res,
        $Val extends FetchFollowersResponse>
    implements $FetchFollowersResponseCopyWith<$Res> {
  _$FetchFollowersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followers = null,
  }) {
    return _then(_value.copyWith(
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<UserMiniInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchFollowersResponseImplCopyWith<$Res>
    implements $FetchFollowersResponseCopyWith<$Res> {
  factory _$$FetchFollowersResponseImplCopyWith(
          _$FetchFollowersResponseImpl value,
          $Res Function(_$FetchFollowersResponseImpl) then) =
      __$$FetchFollowersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserMiniInfo> followers});
}

/// @nodoc
class __$$FetchFollowersResponseImplCopyWithImpl<$Res>
    extends _$FetchFollowersResponseCopyWithImpl<$Res,
        _$FetchFollowersResponseImpl>
    implements _$$FetchFollowersResponseImplCopyWith<$Res> {
  __$$FetchFollowersResponseImplCopyWithImpl(
      _$FetchFollowersResponseImpl _value,
      $Res Function(_$FetchFollowersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followers = null,
  }) {
    return _then(_$FetchFollowersResponseImpl(
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<UserMiniInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchFollowersResponseImpl implements _FetchFollowersResponse {
  _$FetchFollowersResponseImpl({required final List<UserMiniInfo> followers})
      : _followers = followers;

  factory _$FetchFollowersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchFollowersResponseImplFromJson(json);

  final List<UserMiniInfo> _followers;
  @override
  List<UserMiniInfo> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  @override
  String toString() {
    return 'FetchFollowersResponse(followers: $followers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFollowersResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_followers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFollowersResponseImplCopyWith<_$FetchFollowersResponseImpl>
      get copyWith => __$$FetchFollowersResponseImplCopyWithImpl<
          _$FetchFollowersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchFollowersResponseImplToJson(
      this,
    );
  }
}

abstract class _FetchFollowersResponse implements FetchFollowersResponse {
  factory _FetchFollowersResponse(
          {required final List<UserMiniInfo> followers}) =
      _$FetchFollowersResponseImpl;

  factory _FetchFollowersResponse.fromJson(Map<String, dynamic> json) =
      _$FetchFollowersResponseImpl.fromJson;

  @override
  List<UserMiniInfo> get followers;
  @override
  @JsonKey(ignore: true)
  _$$FetchFollowersResponseImplCopyWith<_$FetchFollowersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchFollowingResponse _$FetchFollowingResponseFromJson(
    Map<String, dynamic> json) {
  return _FetchFollowingResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchFollowingResponse {
  List<UserMiniInfo> get following => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchFollowingResponseCopyWith<FetchFollowingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchFollowingResponseCopyWith<$Res> {
  factory $FetchFollowingResponseCopyWith(FetchFollowingResponse value,
          $Res Function(FetchFollowingResponse) then) =
      _$FetchFollowingResponseCopyWithImpl<$Res, FetchFollowingResponse>;
  @useResult
  $Res call({List<UserMiniInfo> following});
}

/// @nodoc
class _$FetchFollowingResponseCopyWithImpl<$Res,
        $Val extends FetchFollowingResponse>
    implements $FetchFollowingResponseCopyWith<$Res> {
  _$FetchFollowingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? following = null,
  }) {
    return _then(_value.copyWith(
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<UserMiniInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchFollowingResponseImplCopyWith<$Res>
    implements $FetchFollowingResponseCopyWith<$Res> {
  factory _$$FetchFollowingResponseImplCopyWith(
          _$FetchFollowingResponseImpl value,
          $Res Function(_$FetchFollowingResponseImpl) then) =
      __$$FetchFollowingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserMiniInfo> following});
}

/// @nodoc
class __$$FetchFollowingResponseImplCopyWithImpl<$Res>
    extends _$FetchFollowingResponseCopyWithImpl<$Res,
        _$FetchFollowingResponseImpl>
    implements _$$FetchFollowingResponseImplCopyWith<$Res> {
  __$$FetchFollowingResponseImplCopyWithImpl(
      _$FetchFollowingResponseImpl _value,
      $Res Function(_$FetchFollowingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? following = null,
  }) {
    return _then(_$FetchFollowingResponseImpl(
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<UserMiniInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchFollowingResponseImpl implements _FetchFollowingResponse {
  _$FetchFollowingResponseImpl({required final List<UserMiniInfo> following})
      : _following = following;

  factory _$FetchFollowingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchFollowingResponseImplFromJson(json);

  final List<UserMiniInfo> _following;
  @override
  List<UserMiniInfo> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  @override
  String toString() {
    return 'FetchFollowingResponse(following: $following)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFollowingResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._following, _following));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_following));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFollowingResponseImplCopyWith<_$FetchFollowingResponseImpl>
      get copyWith => __$$FetchFollowingResponseImplCopyWithImpl<
          _$FetchFollowingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchFollowingResponseImplToJson(
      this,
    );
  }
}

abstract class _FetchFollowingResponse implements FetchFollowingResponse {
  factory _FetchFollowingResponse(
          {required final List<UserMiniInfo> following}) =
      _$FetchFollowingResponseImpl;

  factory _FetchFollowingResponse.fromJson(Map<String, dynamic> json) =
      _$FetchFollowingResponseImpl.fromJson;

  @override
  List<UserMiniInfo> get following;
  @override
  @JsonKey(ignore: true)
  _$$FetchFollowingResponseImplCopyWith<_$FetchFollowingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
