// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchUserRequest _$SearchUserRequestFromJson(Map<String, dynamic> json) {
  return _SearchUserRequest.fromJson(json);
}

/// @nodoc
mixin _$SearchUserRequest {
  String get keyword => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchUserRequestCopyWith<SearchUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserRequestCopyWith<$Res> {
  factory $SearchUserRequestCopyWith(
          SearchUserRequest value, $Res Function(SearchUserRequest) then) =
      _$SearchUserRequestCopyWithImpl<$Res, SearchUserRequest>;
  @useResult
  $Res call({String keyword, int page});
}

/// @nodoc
class _$SearchUserRequestCopyWithImpl<$Res, $Val extends SearchUserRequest>
    implements $SearchUserRequestCopyWith<$Res> {
  _$SearchUserRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchUserRequestImplCopyWith<$Res>
    implements $SearchUserRequestCopyWith<$Res> {
  factory _$$SearchUserRequestImplCopyWith(_$SearchUserRequestImpl value,
          $Res Function(_$SearchUserRequestImpl) then) =
      __$$SearchUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword, int page});
}

/// @nodoc
class __$$SearchUserRequestImplCopyWithImpl<$Res>
    extends _$SearchUserRequestCopyWithImpl<$Res, _$SearchUserRequestImpl>
    implements _$$SearchUserRequestImplCopyWith<$Res> {
  __$$SearchUserRequestImplCopyWithImpl(_$SearchUserRequestImpl _value,
      $Res Function(_$SearchUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = null,
  }) {
    return _then(_$SearchUserRequestImpl(
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
class _$SearchUserRequestImpl implements _SearchUserRequest {
  _$SearchUserRequestImpl({required this.keyword, required this.page});

  factory _$SearchUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchUserRequestImplFromJson(json);

  @override
  final String keyword;
  @override
  final int page;

  @override
  String toString() {
    return 'SearchUserRequest(keyword: $keyword, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserRequestImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keyword, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserRequestImplCopyWith<_$SearchUserRequestImpl> get copyWith =>
      __$$SearchUserRequestImplCopyWithImpl<_$SearchUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchUserRequestImplToJson(
      this,
    );
  }
}

abstract class _SearchUserRequest implements SearchUserRequest {
  factory _SearchUserRequest(
      {required final String keyword,
      required final int page}) = _$SearchUserRequestImpl;

  factory _SearchUserRequest.fromJson(Map<String, dynamic> json) =
      _$SearchUserRequestImpl.fromJson;

  @override
  String get keyword;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$SearchUserRequestImplCopyWith<_$SearchUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchUserResponse _$SearchUserResponseFromJson(Map<String, dynamic> json) {
  return _SearchUserResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchUserResponse {
  List<UserMiniInfo> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchUserResponseCopyWith<SearchUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserResponseCopyWith<$Res> {
  factory $SearchUserResponseCopyWith(
          SearchUserResponse value, $Res Function(SearchUserResponse) then) =
      _$SearchUserResponseCopyWithImpl<$Res, SearchUserResponse>;
  @useResult
  $Res call({List<UserMiniInfo> users});
}

/// @nodoc
class _$SearchUserResponseCopyWithImpl<$Res, $Val extends SearchUserResponse>
    implements $SearchUserResponseCopyWith<$Res> {
  _$SearchUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserMiniInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchUserResponseImplCopyWith<$Res>
    implements $SearchUserResponseCopyWith<$Res> {
  factory _$$SearchUserResponseImplCopyWith(_$SearchUserResponseImpl value,
          $Res Function(_$SearchUserResponseImpl) then) =
      __$$SearchUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserMiniInfo> users});
}

/// @nodoc
class __$$SearchUserResponseImplCopyWithImpl<$Res>
    extends _$SearchUserResponseCopyWithImpl<$Res, _$SearchUserResponseImpl>
    implements _$$SearchUserResponseImplCopyWith<$Res> {
  __$$SearchUserResponseImplCopyWithImpl(_$SearchUserResponseImpl _value,
      $Res Function(_$SearchUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$SearchUserResponseImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserMiniInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchUserResponseImpl implements _SearchUserResponse {
  _$SearchUserResponseImpl({required final List<UserMiniInfo> users})
      : _users = users;

  factory _$SearchUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchUserResponseImplFromJson(json);

  final List<UserMiniInfo> _users;
  @override
  List<UserMiniInfo> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'SearchUserResponse(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserResponseImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserResponseImplCopyWith<_$SearchUserResponseImpl> get copyWith =>
      __$$SearchUserResponseImplCopyWithImpl<_$SearchUserResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchUserResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchUserResponse implements SearchUserResponse {
  factory _SearchUserResponse({required final List<UserMiniInfo> users}) =
      _$SearchUserResponseImpl;

  factory _SearchUserResponse.fromJson(Map<String, dynamic> json) =
      _$SearchUserResponseImpl.fromJson;

  @override
  List<UserMiniInfo> get users;
  @override
  @JsonKey(ignore: true)
  _$$SearchUserResponseImplCopyWith<_$SearchUserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
