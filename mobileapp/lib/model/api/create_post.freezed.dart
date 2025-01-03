// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePostRequest _$CreatePostRequestFromJson(Map<String, dynamic> json) {
  return _CreatePostRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePostRequest {
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePostRequestCopyWith<CreatePostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostRequestCopyWith<$Res> {
  factory $CreatePostRequestCopyWith(
          CreatePostRequest value, $Res Function(CreatePostRequest) then) =
      _$CreatePostRequestCopyWithImpl<$Res, CreatePostRequest>;
  @useResult
  $Res call({String body});
}

/// @nodoc
class _$CreatePostRequestCopyWithImpl<$Res, $Val extends CreatePostRequest>
    implements $CreatePostRequestCopyWith<$Res> {
  _$CreatePostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePostRequestImplCopyWith<$Res>
    implements $CreatePostRequestCopyWith<$Res> {
  factory _$$CreatePostRequestImplCopyWith(_$CreatePostRequestImpl value,
          $Res Function(_$CreatePostRequestImpl) then) =
      __$$CreatePostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String body});
}

/// @nodoc
class __$$CreatePostRequestImplCopyWithImpl<$Res>
    extends _$CreatePostRequestCopyWithImpl<$Res, _$CreatePostRequestImpl>
    implements _$$CreatePostRequestImplCopyWith<$Res> {
  __$$CreatePostRequestImplCopyWithImpl(_$CreatePostRequestImpl _value,
      $Res Function(_$CreatePostRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$CreatePostRequestImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePostRequestImpl implements _CreatePostRequest {
  _$CreatePostRequestImpl({required this.body});

  factory _$CreatePostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePostRequestImplFromJson(json);

  @override
  final String body;

  @override
  String toString() {
    return 'CreatePostRequest(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostRequestImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostRequestImplCopyWith<_$CreatePostRequestImpl> get copyWith =>
      __$$CreatePostRequestImplCopyWithImpl<_$CreatePostRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePostRequestImplToJson(
      this,
    );
  }
}

abstract class _CreatePostRequest implements CreatePostRequest {
  factory _CreatePostRequest({required final String body}) =
      _$CreatePostRequestImpl;

  factory _CreatePostRequest.fromJson(Map<String, dynamic> json) =
      _$CreatePostRequestImpl.fromJson;

  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$CreatePostRequestImplCopyWith<_$CreatePostRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePostResponse _$CreatePostResponseFromJson(Map<String, dynamic> json) {
  return _CreatePostResponse.fromJson(json);
}

/// @nodoc
mixin _$CreatePostResponse {
  PostInfo get post => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePostResponseCopyWith<CreatePostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostResponseCopyWith<$Res> {
  factory $CreatePostResponseCopyWith(
          CreatePostResponse value, $Res Function(CreatePostResponse) then) =
      _$CreatePostResponseCopyWithImpl<$Res, CreatePostResponse>;
  @useResult
  $Res call({PostInfo post});

  $PostInfoCopyWith<$Res> get post;
}

/// @nodoc
class _$CreatePostResponseCopyWithImpl<$Res, $Val extends CreatePostResponse>
    implements $CreatePostResponseCopyWith<$Res> {
  _$CreatePostResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostInfoCopyWith<$Res> get post {
    return $PostInfoCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreatePostResponseImplCopyWith<$Res>
    implements $CreatePostResponseCopyWith<$Res> {
  factory _$$CreatePostResponseImplCopyWith(_$CreatePostResponseImpl value,
          $Res Function(_$CreatePostResponseImpl) then) =
      __$$CreatePostResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostInfo post});

  @override
  $PostInfoCopyWith<$Res> get post;
}

/// @nodoc
class __$$CreatePostResponseImplCopyWithImpl<$Res>
    extends _$CreatePostResponseCopyWithImpl<$Res, _$CreatePostResponseImpl>
    implements _$$CreatePostResponseImplCopyWith<$Res> {
  __$$CreatePostResponseImplCopyWithImpl(_$CreatePostResponseImpl _value,
      $Res Function(_$CreatePostResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$CreatePostResponseImpl(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePostResponseImpl implements _CreatePostResponse {
  _$CreatePostResponseImpl({required this.post});

  factory _$CreatePostResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePostResponseImplFromJson(json);

  @override
  final PostInfo post;

  @override
  String toString() {
    return 'CreatePostResponse(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostResponseImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostResponseImplCopyWith<_$CreatePostResponseImpl> get copyWith =>
      __$$CreatePostResponseImplCopyWithImpl<_$CreatePostResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePostResponseImplToJson(
      this,
    );
  }
}

abstract class _CreatePostResponse implements CreatePostResponse {
  factory _CreatePostResponse({required final PostInfo post}) =
      _$CreatePostResponseImpl;

  factory _CreatePostResponse.fromJson(Map<String, dynamic> json) =
      _$CreatePostResponseImpl.fromJson;

  @override
  PostInfo get post;
  @override
  @JsonKey(ignore: true)
  _$$CreatePostResponseImplCopyWith<_$CreatePostResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
