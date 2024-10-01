// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowRequest _$FollowRequestFromJson(Map<String, dynamic> json) {
  return _FollowRequest.fromJson(json);
}

/// @nodoc
mixin _$FollowRequest {
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowRequestCopyWith<FollowRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowRequestCopyWith<$Res> {
  factory $FollowRequestCopyWith(
          FollowRequest value, $Res Function(FollowRequest) then) =
      _$FollowRequestCopyWithImpl<$Res, FollowRequest>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$FollowRequestCopyWithImpl<$Res, $Val extends FollowRequest>
    implements $FollowRequestCopyWith<$Res> {
  _$FollowRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowRequestImplCopyWith<$Res>
    implements $FollowRequestCopyWith<$Res> {
  factory _$$FollowRequestImplCopyWith(
          _$FollowRequestImpl value, $Res Function(_$FollowRequestImpl) then) =
      __$$FollowRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$FollowRequestImplCopyWithImpl<$Res>
    extends _$FollowRequestCopyWithImpl<$Res, _$FollowRequestImpl>
    implements _$$FollowRequestImplCopyWith<$Res> {
  __$$FollowRequestImplCopyWithImpl(
      _$FollowRequestImpl _value, $Res Function(_$FollowRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$FollowRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowRequestImpl implements _FollowRequest {
  _$FollowRequestImpl({required this.userId});

  factory _$FollowRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowRequestImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'FollowRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowRequestImplCopyWith<_$FollowRequestImpl> get copyWith =>
      __$$FollowRequestImplCopyWithImpl<_$FollowRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowRequestImplToJson(
      this,
    );
  }
}

abstract class _FollowRequest implements FollowRequest {
  factory _FollowRequest({required final String userId}) = _$FollowRequestImpl;

  factory _FollowRequest.fromJson(Map<String, dynamic> json) =
      _$FollowRequestImpl.fromJson;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$FollowRequestImplCopyWith<_$FollowRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowResponse _$FollowResponseFromJson(Map<String, dynamic> json) {
  return _FollowResponse.fromJson(json);
}

/// @nodoc
mixin _$FollowResponse {
  UserMiniInfo get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowResponseCopyWith<FollowResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowResponseCopyWith<$Res> {
  factory $FollowResponseCopyWith(
          FollowResponse value, $Res Function(FollowResponse) then) =
      _$FollowResponseCopyWithImpl<$Res, FollowResponse>;
  @useResult
  $Res call({UserMiniInfo user});

  $UserMiniInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$FollowResponseCopyWithImpl<$Res, $Val extends FollowResponse>
    implements $FollowResponseCopyWith<$Res> {
  _$FollowResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserMiniInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMiniInfoCopyWith<$Res> get user {
    return $UserMiniInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowResponseImplCopyWith<$Res>
    implements $FollowResponseCopyWith<$Res> {
  factory _$$FollowResponseImplCopyWith(_$FollowResponseImpl value,
          $Res Function(_$FollowResponseImpl) then) =
      __$$FollowResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserMiniInfo user});

  @override
  $UserMiniInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$$FollowResponseImplCopyWithImpl<$Res>
    extends _$FollowResponseCopyWithImpl<$Res, _$FollowResponseImpl>
    implements _$$FollowResponseImplCopyWith<$Res> {
  __$$FollowResponseImplCopyWithImpl(
      _$FollowResponseImpl _value, $Res Function(_$FollowResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$FollowResponseImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserMiniInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowResponseImpl implements _FollowResponse {
  _$FollowResponseImpl({required this.user});

  factory _$FollowResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowResponseImplFromJson(json);

  @override
  final UserMiniInfo user;

  @override
  String toString() {
    return 'FollowResponse(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowResponseImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowResponseImplCopyWith<_$FollowResponseImpl> get copyWith =>
      __$$FollowResponseImplCopyWithImpl<_$FollowResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowResponseImplToJson(
      this,
    );
  }
}

abstract class _FollowResponse implements FollowResponse {
  factory _FollowResponse({required final UserMiniInfo user}) =
      _$FollowResponseImpl;

  factory _FollowResponse.fromJson(Map<String, dynamic> json) =
      _$FollowResponseImpl.fromJson;

  @override
  UserMiniInfo get user;
  @override
  @JsonKey(ignore: true)
  _$$FollowResponseImplCopyWith<_$FollowResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnFollowRequest _$UnFollowRequestFromJson(Map<String, dynamic> json) {
  return _UnFollowRequest.fromJson(json);
}

/// @nodoc
mixin _$UnFollowRequest {
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnFollowRequestCopyWith<UnFollowRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnFollowRequestCopyWith<$Res> {
  factory $UnFollowRequestCopyWith(
          UnFollowRequest value, $Res Function(UnFollowRequest) then) =
      _$UnFollowRequestCopyWithImpl<$Res, UnFollowRequest>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$UnFollowRequestCopyWithImpl<$Res, $Val extends UnFollowRequest>
    implements $UnFollowRequestCopyWith<$Res> {
  _$UnFollowRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnFollowRequestImplCopyWith<$Res>
    implements $UnFollowRequestCopyWith<$Res> {
  factory _$$UnFollowRequestImplCopyWith(_$UnFollowRequestImpl value,
          $Res Function(_$UnFollowRequestImpl) then) =
      __$$UnFollowRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$UnFollowRequestImplCopyWithImpl<$Res>
    extends _$UnFollowRequestCopyWithImpl<$Res, _$UnFollowRequestImpl>
    implements _$$UnFollowRequestImplCopyWith<$Res> {
  __$$UnFollowRequestImplCopyWithImpl(
      _$UnFollowRequestImpl _value, $Res Function(_$UnFollowRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UnFollowRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnFollowRequestImpl implements _UnFollowRequest {
  _$UnFollowRequestImpl({required this.userId});

  factory _$UnFollowRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnFollowRequestImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'UnFollowRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnFollowRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnFollowRequestImplCopyWith<_$UnFollowRequestImpl> get copyWith =>
      __$$UnFollowRequestImplCopyWithImpl<_$UnFollowRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnFollowRequestImplToJson(
      this,
    );
  }
}

abstract class _UnFollowRequest implements UnFollowRequest {
  factory _UnFollowRequest({required final String userId}) =
      _$UnFollowRequestImpl;

  factory _UnFollowRequest.fromJson(Map<String, dynamic> json) =
      _$UnFollowRequestImpl.fromJson;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$UnFollowRequestImplCopyWith<_$UnFollowRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnFollowResponse _$UnFollowResponseFromJson(Map<String, dynamic> json) {
  return _UnFollowResponse.fromJson(json);
}

/// @nodoc
mixin _$UnFollowResponse {
  UserMiniInfo get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnFollowResponseCopyWith<UnFollowResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnFollowResponseCopyWith<$Res> {
  factory $UnFollowResponseCopyWith(
          UnFollowResponse value, $Res Function(UnFollowResponse) then) =
      _$UnFollowResponseCopyWithImpl<$Res, UnFollowResponse>;
  @useResult
  $Res call({UserMiniInfo user});

  $UserMiniInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$UnFollowResponseCopyWithImpl<$Res, $Val extends UnFollowResponse>
    implements $UnFollowResponseCopyWith<$Res> {
  _$UnFollowResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserMiniInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMiniInfoCopyWith<$Res> get user {
    return $UserMiniInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnFollowResponseImplCopyWith<$Res>
    implements $UnFollowResponseCopyWith<$Res> {
  factory _$$UnFollowResponseImplCopyWith(_$UnFollowResponseImpl value,
          $Res Function(_$UnFollowResponseImpl) then) =
      __$$UnFollowResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserMiniInfo user});

  @override
  $UserMiniInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$$UnFollowResponseImplCopyWithImpl<$Res>
    extends _$UnFollowResponseCopyWithImpl<$Res, _$UnFollowResponseImpl>
    implements _$$UnFollowResponseImplCopyWith<$Res> {
  __$$UnFollowResponseImplCopyWithImpl(_$UnFollowResponseImpl _value,
      $Res Function(_$UnFollowResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UnFollowResponseImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserMiniInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnFollowResponseImpl implements _UnFollowResponse {
  _$UnFollowResponseImpl({required this.user});

  factory _$UnFollowResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnFollowResponseImplFromJson(json);

  @override
  final UserMiniInfo user;

  @override
  String toString() {
    return 'UnFollowResponse(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnFollowResponseImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnFollowResponseImplCopyWith<_$UnFollowResponseImpl> get copyWith =>
      __$$UnFollowResponseImplCopyWithImpl<_$UnFollowResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnFollowResponseImplToJson(
      this,
    );
  }
}

abstract class _UnFollowResponse implements UnFollowResponse {
  factory _UnFollowResponse({required final UserMiniInfo user}) =
      _$UnFollowResponseImpl;

  factory _UnFollowResponse.fromJson(Map<String, dynamic> json) =
      _$UnFollowResponseImpl.fromJson;

  @override
  UserMiniInfo get user;
  @override
  @JsonKey(ignore: true)
  _$$UnFollowResponseImplCopyWith<_$UnFollowResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
