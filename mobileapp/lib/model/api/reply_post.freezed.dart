// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyPostRequest _$ReplyPostRequestFromJson(Map<String, dynamic> json) {
  return _ReplyPostRequest.fromJson(json);
}

/// @nodoc
mixin _$ReplyPostRequest {
  String get replyToId => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyPostRequestCopyWith<ReplyPostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyPostRequestCopyWith<$Res> {
  factory $ReplyPostRequestCopyWith(
          ReplyPostRequest value, $Res Function(ReplyPostRequest) then) =
      _$ReplyPostRequestCopyWithImpl<$Res, ReplyPostRequest>;
  @useResult
  $Res call({String replyToId, String body});
}

/// @nodoc
class _$ReplyPostRequestCopyWithImpl<$Res, $Val extends ReplyPostRequest>
    implements $ReplyPostRequestCopyWith<$Res> {
  _$ReplyPostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyToId = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      replyToId: null == replyToId
          ? _value.replyToId
          : replyToId // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyPostRequestImplCopyWith<$Res>
    implements $ReplyPostRequestCopyWith<$Res> {
  factory _$$ReplyPostRequestImplCopyWith(_$ReplyPostRequestImpl value,
          $Res Function(_$ReplyPostRequestImpl) then) =
      __$$ReplyPostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String replyToId, String body});
}

/// @nodoc
class __$$ReplyPostRequestImplCopyWithImpl<$Res>
    extends _$ReplyPostRequestCopyWithImpl<$Res, _$ReplyPostRequestImpl>
    implements _$$ReplyPostRequestImplCopyWith<$Res> {
  __$$ReplyPostRequestImplCopyWithImpl(_$ReplyPostRequestImpl _value,
      $Res Function(_$ReplyPostRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyToId = null,
    Object? body = null,
  }) {
    return _then(_$ReplyPostRequestImpl(
      replyToId: null == replyToId
          ? _value.replyToId
          : replyToId // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyPostRequestImpl implements _ReplyPostRequest {
  _$ReplyPostRequestImpl({required this.replyToId, required this.body});

  factory _$ReplyPostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyPostRequestImplFromJson(json);

  @override
  final String replyToId;
  @override
  final String body;

  @override
  String toString() {
    return 'ReplyPostRequest(replyToId: $replyToId, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyPostRequestImpl &&
            (identical(other.replyToId, replyToId) ||
                other.replyToId == replyToId) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, replyToId, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyPostRequestImplCopyWith<_$ReplyPostRequestImpl> get copyWith =>
      __$$ReplyPostRequestImplCopyWithImpl<_$ReplyPostRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyPostRequestImplToJson(
      this,
    );
  }
}

abstract class _ReplyPostRequest implements ReplyPostRequest {
  factory _ReplyPostRequest(
      {required final String replyToId,
      required final String body}) = _$ReplyPostRequestImpl;

  factory _ReplyPostRequest.fromJson(Map<String, dynamic> json) =
      _$ReplyPostRequestImpl.fromJson;

  @override
  String get replyToId;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$ReplyPostRequestImplCopyWith<_$ReplyPostRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReplyPostResponse _$ReplyPostResponseFromJson(Map<String, dynamic> json) {
  return _ReplyPostResponse.fromJson(json);
}

/// @nodoc
mixin _$ReplyPostResponse {
  PostDigest get replyTo => throw _privateConstructorUsedError;
  PostDigest get reply => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyPostResponseCopyWith<ReplyPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyPostResponseCopyWith<$Res> {
  factory $ReplyPostResponseCopyWith(
          ReplyPostResponse value, $Res Function(ReplyPostResponse) then) =
      _$ReplyPostResponseCopyWithImpl<$Res, ReplyPostResponse>;
  @useResult
  $Res call({PostDigest replyTo, PostDigest reply});

  $PostDigestCopyWith<$Res> get replyTo;
  $PostDigestCopyWith<$Res> get reply;
}

/// @nodoc
class _$ReplyPostResponseCopyWithImpl<$Res, $Val extends ReplyPostResponse>
    implements $ReplyPostResponseCopyWith<$Res> {
  _$ReplyPostResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyTo = null,
    Object? reply = null,
  }) {
    return _then(_value.copyWith(
      replyTo: null == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as PostDigest,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as PostDigest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostDigestCopyWith<$Res> get replyTo {
    return $PostDigestCopyWith<$Res>(_value.replyTo, (value) {
      return _then(_value.copyWith(replyTo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostDigestCopyWith<$Res> get reply {
    return $PostDigestCopyWith<$Res>(_value.reply, (value) {
      return _then(_value.copyWith(reply: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReplyPostResponseImplCopyWith<$Res>
    implements $ReplyPostResponseCopyWith<$Res> {
  factory _$$ReplyPostResponseImplCopyWith(_$ReplyPostResponseImpl value,
          $Res Function(_$ReplyPostResponseImpl) then) =
      __$$ReplyPostResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostDigest replyTo, PostDigest reply});

  @override
  $PostDigestCopyWith<$Res> get replyTo;
  @override
  $PostDigestCopyWith<$Res> get reply;
}

/// @nodoc
class __$$ReplyPostResponseImplCopyWithImpl<$Res>
    extends _$ReplyPostResponseCopyWithImpl<$Res, _$ReplyPostResponseImpl>
    implements _$$ReplyPostResponseImplCopyWith<$Res> {
  __$$ReplyPostResponseImplCopyWithImpl(_$ReplyPostResponseImpl _value,
      $Res Function(_$ReplyPostResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyTo = null,
    Object? reply = null,
  }) {
    return _then(_$ReplyPostResponseImpl(
      replyTo: null == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as PostDigest,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as PostDigest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyPostResponseImpl implements _ReplyPostResponse {
  _$ReplyPostResponseImpl({required this.replyTo, required this.reply});

  factory _$ReplyPostResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyPostResponseImplFromJson(json);

  @override
  final PostDigest replyTo;
  @override
  final PostDigest reply;

  @override
  String toString() {
    return 'ReplyPostResponse(replyTo: $replyTo, reply: $reply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyPostResponseImpl &&
            (identical(other.replyTo, replyTo) || other.replyTo == replyTo) &&
            (identical(other.reply, reply) || other.reply == reply));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, replyTo, reply);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyPostResponseImplCopyWith<_$ReplyPostResponseImpl> get copyWith =>
      __$$ReplyPostResponseImplCopyWithImpl<_$ReplyPostResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyPostResponseImplToJson(
      this,
    );
  }
}

abstract class _ReplyPostResponse implements ReplyPostResponse {
  factory _ReplyPostResponse(
      {required final PostDigest replyTo,
      required final PostDigest reply}) = _$ReplyPostResponseImpl;

  factory _ReplyPostResponse.fromJson(Map<String, dynamic> json) =
      _$ReplyPostResponseImpl.fromJson;

  @override
  PostDigest get replyTo;
  @override
  PostDigest get reply;
  @override
  @JsonKey(ignore: true)
  _$$ReplyPostResponseImplCopyWith<_$ReplyPostResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
