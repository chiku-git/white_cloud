// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_favorites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFavoritesRequest _$GetFavoritesRequestFromJson(Map<String, dynamic> json) {
  return _GetFavoritesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetFavoritesRequest {
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFavoritesRequestCopyWith<GetFavoritesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFavoritesRequestCopyWith<$Res> {
  factory $GetFavoritesRequestCopyWith(
          GetFavoritesRequest value, $Res Function(GetFavoritesRequest) then) =
      _$GetFavoritesRequestCopyWithImpl<$Res, GetFavoritesRequest>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$GetFavoritesRequestCopyWithImpl<$Res, $Val extends GetFavoritesRequest>
    implements $GetFavoritesRequestCopyWith<$Res> {
  _$GetFavoritesRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$GetFavoritesRequestImplCopyWith<$Res>
    implements $GetFavoritesRequestCopyWith<$Res> {
  factory _$$GetFavoritesRequestImplCopyWith(_$GetFavoritesRequestImpl value,
          $Res Function(_$GetFavoritesRequestImpl) then) =
      __$$GetFavoritesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$GetFavoritesRequestImplCopyWithImpl<$Res>
    extends _$GetFavoritesRequestCopyWithImpl<$Res, _$GetFavoritesRequestImpl>
    implements _$$GetFavoritesRequestImplCopyWith<$Res> {
  __$$GetFavoritesRequestImplCopyWithImpl(_$GetFavoritesRequestImpl _value,
      $Res Function(_$GetFavoritesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$GetFavoritesRequestImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFavoritesRequestImpl implements _GetFavoritesRequest {
  _$GetFavoritesRequestImpl({required this.page});

  factory _$GetFavoritesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFavoritesRequestImplFromJson(json);

  @override
  final int page;

  @override
  String toString() {
    return 'GetFavoritesRequest(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavoritesRequestImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavoritesRequestImplCopyWith<_$GetFavoritesRequestImpl> get copyWith =>
      __$$GetFavoritesRequestImplCopyWithImpl<_$GetFavoritesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFavoritesRequestImplToJson(
      this,
    );
  }
}

abstract class _GetFavoritesRequest implements GetFavoritesRequest {
  factory _GetFavoritesRequest({required final int page}) =
      _$GetFavoritesRequestImpl;

  factory _GetFavoritesRequest.fromJson(Map<String, dynamic> json) =
      _$GetFavoritesRequestImpl.fromJson;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$GetFavoritesRequestImplCopyWith<_$GetFavoritesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetFavoritesResponse _$GetFavoritesResponseFromJson(Map<String, dynamic> json) {
  return _GetFavoritesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetFavoritesResponse {
  List<PostDigest> get digests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFavoritesResponseCopyWith<GetFavoritesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFavoritesResponseCopyWith<$Res> {
  factory $GetFavoritesResponseCopyWith(GetFavoritesResponse value,
          $Res Function(GetFavoritesResponse) then) =
      _$GetFavoritesResponseCopyWithImpl<$Res, GetFavoritesResponse>;
  @useResult
  $Res call({List<PostDigest> digests});
}

/// @nodoc
class _$GetFavoritesResponseCopyWithImpl<$Res,
        $Val extends GetFavoritesResponse>
    implements $GetFavoritesResponseCopyWith<$Res> {
  _$GetFavoritesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digests = null,
  }) {
    return _then(_value.copyWith(
      digests: null == digests
          ? _value.digests
          : digests // ignore: cast_nullable_to_non_nullable
              as List<PostDigest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFavoritesResponseImplCopyWith<$Res>
    implements $GetFavoritesResponseCopyWith<$Res> {
  factory _$$GetFavoritesResponseImplCopyWith(_$GetFavoritesResponseImpl value,
          $Res Function(_$GetFavoritesResponseImpl) then) =
      __$$GetFavoritesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostDigest> digests});
}

/// @nodoc
class __$$GetFavoritesResponseImplCopyWithImpl<$Res>
    extends _$GetFavoritesResponseCopyWithImpl<$Res, _$GetFavoritesResponseImpl>
    implements _$$GetFavoritesResponseImplCopyWith<$Res> {
  __$$GetFavoritesResponseImplCopyWithImpl(_$GetFavoritesResponseImpl _value,
      $Res Function(_$GetFavoritesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digests = null,
  }) {
    return _then(_$GetFavoritesResponseImpl(
      digests: null == digests
          ? _value._digests
          : digests // ignore: cast_nullable_to_non_nullable
              as List<PostDigest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFavoritesResponseImpl implements _GetFavoritesResponse {
  _$GetFavoritesResponseImpl({required final List<PostDigest> digests})
      : _digests = digests;

  factory _$GetFavoritesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFavoritesResponseImplFromJson(json);

  final List<PostDigest> _digests;
  @override
  List<PostDigest> get digests {
    if (_digests is EqualUnmodifiableListView) return _digests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_digests);
  }

  @override
  String toString() {
    return 'GetFavoritesResponse(digests: $digests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavoritesResponseImpl &&
            const DeepCollectionEquality().equals(other._digests, _digests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_digests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavoritesResponseImplCopyWith<_$GetFavoritesResponseImpl>
      get copyWith =>
          __$$GetFavoritesResponseImplCopyWithImpl<_$GetFavoritesResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFavoritesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetFavoritesResponse implements GetFavoritesResponse {
  factory _GetFavoritesResponse({required final List<PostDigest> digests}) =
      _$GetFavoritesResponseImpl;

  factory _GetFavoritesResponse.fromJson(Map<String, dynamic> json) =
      _$GetFavoritesResponseImpl.fromJson;

  @override
  List<PostDigest> get digests;
  @override
  @JsonKey(ignore: true)
  _$$GetFavoritesResponseImplCopyWith<_$GetFavoritesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
