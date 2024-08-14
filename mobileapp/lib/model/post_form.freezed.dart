// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostForm {
  User get user => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  PostDigest? get replyTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostFormCopyWith<PostForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormCopyWith<$Res> {
  factory $PostFormCopyWith(PostForm value, $Res Function(PostForm) then) =
      _$PostFormCopyWithImpl<$Res, PostForm>;
  @useResult
  $Res call({User user, String body, PostDigest? replyTo});

  $PostDigestCopyWith<$Res>? get replyTo;
}

/// @nodoc
class _$PostFormCopyWithImpl<$Res, $Val extends PostForm>
    implements $PostFormCopyWith<$Res> {
  _$PostFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? body = null,
    Object? replyTo = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as PostDigest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostDigestCopyWith<$Res>? get replyTo {
    if (_value.replyTo == null) {
      return null;
    }

    return $PostDigestCopyWith<$Res>(_value.replyTo!, (value) {
      return _then(_value.copyWith(replyTo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostFormImplCopyWith<$Res>
    implements $PostFormCopyWith<$Res> {
  factory _$$PostFormImplCopyWith(
          _$PostFormImpl value, $Res Function(_$PostFormImpl) then) =
      __$$PostFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String body, PostDigest? replyTo});

  @override
  $PostDigestCopyWith<$Res>? get replyTo;
}

/// @nodoc
class __$$PostFormImplCopyWithImpl<$Res>
    extends _$PostFormCopyWithImpl<$Res, _$PostFormImpl>
    implements _$$PostFormImplCopyWith<$Res> {
  __$$PostFormImplCopyWithImpl(
      _$PostFormImpl _value, $Res Function(_$PostFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? body = null,
    Object? replyTo = freezed,
  }) {
    return _then(_$PostFormImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as PostDigest?,
    ));
  }
}

/// @nodoc

class _$PostFormImpl extends _PostForm {
  _$PostFormImpl({required this.user, required this.body, this.replyTo})
      : super._();

  @override
  final User user;
  @override
  final String body;
  @override
  final PostDigest? replyTo;

  @override
  String toString() {
    return 'PostForm(user: $user, body: $body, replyTo: $replyTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFormImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.replyTo, replyTo) || other.replyTo == replyTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, body, replyTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFormImplCopyWith<_$PostFormImpl> get copyWith =>
      __$$PostFormImplCopyWithImpl<_$PostFormImpl>(this, _$identity);
}

abstract class _PostForm extends PostForm {
  factory _PostForm(
      {required final User user,
      required final String body,
      final PostDigest? replyTo}) = _$PostFormImpl;
  _PostForm._() : super._();

  @override
  User get user;
  @override
  String get body;
  @override
  PostDigest? get replyTo;
  @override
  @JsonKey(ignore: true)
  _$$PostFormImplCopyWith<_$PostFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
