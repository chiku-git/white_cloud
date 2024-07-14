// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchForm {
  String get keyword => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFormCopyWith<SearchForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFormCopyWith<$Res> {
  factory $SearchFormCopyWith(
          SearchForm value, $Res Function(SearchForm) then) =
      _$SearchFormCopyWithImpl<$Res, SearchForm>;
  @useResult
  $Res call({String keyword, int page});
}

/// @nodoc
class _$SearchFormCopyWithImpl<$Res, $Val extends SearchForm>
    implements $SearchFormCopyWith<$Res> {
  _$SearchFormCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchFormImplCopyWith<$Res>
    implements $SearchFormCopyWith<$Res> {
  factory _$$SearchFormImplCopyWith(
          _$SearchFormImpl value, $Res Function(_$SearchFormImpl) then) =
      __$$SearchFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword, int page});
}

/// @nodoc
class __$$SearchFormImplCopyWithImpl<$Res>
    extends _$SearchFormCopyWithImpl<$Res, _$SearchFormImpl>
    implements _$$SearchFormImplCopyWith<$Res> {
  __$$SearchFormImplCopyWithImpl(
      _$SearchFormImpl _value, $Res Function(_$SearchFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = null,
  }) {
    return _then(_$SearchFormImpl(
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

class _$SearchFormImpl extends _SearchForm {
  _$SearchFormImpl({required this.keyword, required this.page}) : super._();

  @override
  final String keyword;
  @override
  final int page;

  @override
  String toString() {
    return 'SearchForm(keyword: $keyword, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFormImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFormImplCopyWith<_$SearchFormImpl> get copyWith =>
      __$$SearchFormImplCopyWithImpl<_$SearchFormImpl>(this, _$identity);
}

abstract class _SearchForm extends SearchForm {
  factory _SearchForm(
      {required final String keyword,
      required final int page}) = _$SearchFormImpl;
  _SearchForm._() : super._();

  @override
  String get keyword;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$SearchFormImplCopyWith<_$SearchFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
