// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_digest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostDigest _$PostDigestFromJson(Map<String, dynamic> json) {
  return _PostDigest.fromJson(json);
}

/// @nodoc
mixin _$PostDigest {
  PostInfo get post => throw _privateConstructorUsedError;
  FavoriteSummary get favorite => throw _privateConstructorUsedError;
  ReplySummary get reply => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDigestCopyWith<PostDigest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDigestCopyWith<$Res> {
  factory $PostDigestCopyWith(
          PostDigest value, $Res Function(PostDigest) then) =
      _$PostDigestCopyWithImpl<$Res, PostDigest>;
  @useResult
  $Res call({PostInfo post, FavoriteSummary favorite, ReplySummary reply});

  $PostInfoCopyWith<$Res> get post;
  $FavoriteSummaryCopyWith<$Res> get favorite;
  $ReplySummaryCopyWith<$Res> get reply;
}

/// @nodoc
class _$PostDigestCopyWithImpl<$Res, $Val extends PostDigest>
    implements $PostDigestCopyWith<$Res> {
  _$PostDigestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? favorite = null,
    Object? reply = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostInfo,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as FavoriteSummary,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as ReplySummary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostInfoCopyWith<$Res> get post {
    return $PostInfoCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoriteSummaryCopyWith<$Res> get favorite {
    return $FavoriteSummaryCopyWith<$Res>(_value.favorite, (value) {
      return _then(_value.copyWith(favorite: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReplySummaryCopyWith<$Res> get reply {
    return $ReplySummaryCopyWith<$Res>(_value.reply, (value) {
      return _then(_value.copyWith(reply: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostDigestImplCopyWith<$Res>
    implements $PostDigestCopyWith<$Res> {
  factory _$$PostDigestImplCopyWith(
          _$PostDigestImpl value, $Res Function(_$PostDigestImpl) then) =
      __$$PostDigestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostInfo post, FavoriteSummary favorite, ReplySummary reply});

  @override
  $PostInfoCopyWith<$Res> get post;
  @override
  $FavoriteSummaryCopyWith<$Res> get favorite;
  @override
  $ReplySummaryCopyWith<$Res> get reply;
}

/// @nodoc
class __$$PostDigestImplCopyWithImpl<$Res>
    extends _$PostDigestCopyWithImpl<$Res, _$PostDigestImpl>
    implements _$$PostDigestImplCopyWith<$Res> {
  __$$PostDigestImplCopyWithImpl(
      _$PostDigestImpl _value, $Res Function(_$PostDigestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? favorite = null,
    Object? reply = null,
  }) {
    return _then(_$PostDigestImpl(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostInfo,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as FavoriteSummary,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as ReplySummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostDigestImpl implements _PostDigest {
  _$PostDigestImpl(
      {required this.post, required this.favorite, required this.reply});

  factory _$PostDigestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostDigestImplFromJson(json);

  @override
  final PostInfo post;
  @override
  final FavoriteSummary favorite;
  @override
  final ReplySummary reply;

  @override
  String toString() {
    return 'PostDigest(post: $post, favorite: $favorite, reply: $reply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDigestImpl &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.reply, reply) || other.reply == reply));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, post, favorite, reply);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDigestImplCopyWith<_$PostDigestImpl> get copyWith =>
      __$$PostDigestImplCopyWithImpl<_$PostDigestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostDigestImplToJson(
      this,
    );
  }
}

abstract class _PostDigest implements PostDigest {
  factory _PostDigest(
      {required final PostInfo post,
      required final FavoriteSummary favorite,
      required final ReplySummary reply}) = _$PostDigestImpl;

  factory _PostDigest.fromJson(Map<String, dynamic> json) =
      _$PostDigestImpl.fromJson;

  @override
  PostInfo get post;
  @override
  FavoriteSummary get favorite;
  @override
  ReplySummary get reply;
  @override
  @JsonKey(ignore: true)
  _$$PostDigestImplCopyWith<_$PostDigestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavoriteSummary _$FavoriteSummaryFromJson(Map<String, dynamic> json) {
  return _FavoriteSummary.fromJson(json);
}

/// @nodoc
mixin _$FavoriteSummary {
  int get count => throw _privateConstructorUsedError;
  bool get isMyFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteSummaryCopyWith<FavoriteSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteSummaryCopyWith<$Res> {
  factory $FavoriteSummaryCopyWith(
          FavoriteSummary value, $Res Function(FavoriteSummary) then) =
      _$FavoriteSummaryCopyWithImpl<$Res, FavoriteSummary>;
  @useResult
  $Res call({int count, bool isMyFavorite});
}

/// @nodoc
class _$FavoriteSummaryCopyWithImpl<$Res, $Val extends FavoriteSummary>
    implements $FavoriteSummaryCopyWith<$Res> {
  _$FavoriteSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? isMyFavorite = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isMyFavorite: null == isMyFavorite
          ? _value.isMyFavorite
          : isMyFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteSummaryImplCopyWith<$Res>
    implements $FavoriteSummaryCopyWith<$Res> {
  factory _$$FavoriteSummaryImplCopyWith(_$FavoriteSummaryImpl value,
          $Res Function(_$FavoriteSummaryImpl) then) =
      __$$FavoriteSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, bool isMyFavorite});
}

/// @nodoc
class __$$FavoriteSummaryImplCopyWithImpl<$Res>
    extends _$FavoriteSummaryCopyWithImpl<$Res, _$FavoriteSummaryImpl>
    implements _$$FavoriteSummaryImplCopyWith<$Res> {
  __$$FavoriteSummaryImplCopyWithImpl(
      _$FavoriteSummaryImpl _value, $Res Function(_$FavoriteSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? isMyFavorite = null,
  }) {
    return _then(_$FavoriteSummaryImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isMyFavorite: null == isMyFavorite
          ? _value.isMyFavorite
          : isMyFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteSummaryImpl implements _FavoriteSummary {
  _$FavoriteSummaryImpl({required this.count, required this.isMyFavorite});

  factory _$FavoriteSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteSummaryImplFromJson(json);

  @override
  final int count;
  @override
  final bool isMyFavorite;

  @override
  String toString() {
    return 'FavoriteSummary(count: $count, isMyFavorite: $isMyFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteSummaryImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.isMyFavorite, isMyFavorite) ||
                other.isMyFavorite == isMyFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, isMyFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteSummaryImplCopyWith<_$FavoriteSummaryImpl> get copyWith =>
      __$$FavoriteSummaryImplCopyWithImpl<_$FavoriteSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteSummaryImplToJson(
      this,
    );
  }
}

abstract class _FavoriteSummary implements FavoriteSummary {
  factory _FavoriteSummary(
      {required final int count,
      required final bool isMyFavorite}) = _$FavoriteSummaryImpl;

  factory _FavoriteSummary.fromJson(Map<String, dynamic> json) =
      _$FavoriteSummaryImpl.fromJson;

  @override
  int get count;
  @override
  bool get isMyFavorite;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteSummaryImplCopyWith<_$FavoriteSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReplySummary _$ReplySummaryFromJson(Map<String, dynamic> json) {
  return _ReplySummary.fromJson(json);
}

/// @nodoc
mixin _$ReplySummary {
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplySummaryCopyWith<ReplySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplySummaryCopyWith<$Res> {
  factory $ReplySummaryCopyWith(
          ReplySummary value, $Res Function(ReplySummary) then) =
      _$ReplySummaryCopyWithImpl<$Res, ReplySummary>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$ReplySummaryCopyWithImpl<$Res, $Val extends ReplySummary>
    implements $ReplySummaryCopyWith<$Res> {
  _$ReplySummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplySummaryImplCopyWith<$Res>
    implements $ReplySummaryCopyWith<$Res> {
  factory _$$ReplySummaryImplCopyWith(
          _$ReplySummaryImpl value, $Res Function(_$ReplySummaryImpl) then) =
      __$$ReplySummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$ReplySummaryImplCopyWithImpl<$Res>
    extends _$ReplySummaryCopyWithImpl<$Res, _$ReplySummaryImpl>
    implements _$$ReplySummaryImplCopyWith<$Res> {
  __$$ReplySummaryImplCopyWithImpl(
      _$ReplySummaryImpl _value, $Res Function(_$ReplySummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$ReplySummaryImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplySummaryImpl implements _ReplySummary {
  _$ReplySummaryImpl({required this.count});

  factory _$ReplySummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplySummaryImplFromJson(json);

  @override
  final int count;

  @override
  String toString() {
    return 'ReplySummary(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplySummaryImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplySummaryImplCopyWith<_$ReplySummaryImpl> get copyWith =>
      __$$ReplySummaryImplCopyWithImpl<_$ReplySummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplySummaryImplToJson(
      this,
    );
  }
}

abstract class _ReplySummary implements ReplySummary {
  factory _ReplySummary({required final int count}) = _$ReplySummaryImpl;

  factory _ReplySummary.fromJson(Map<String, dynamic> json) =
      _$ReplySummaryImpl.fromJson;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ReplySummaryImplCopyWith<_$ReplySummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
