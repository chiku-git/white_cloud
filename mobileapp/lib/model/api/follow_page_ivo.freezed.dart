// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_page_ivo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FollowPageIvo {
  UserInfo get user => throw _privateConstructorUsedError;
  int get initialPageIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowPageIvoCopyWith<FollowPageIvo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowPageIvoCopyWith<$Res> {
  factory $FollowPageIvoCopyWith(
          FollowPageIvo value, $Res Function(FollowPageIvo) then) =
      _$FollowPageIvoCopyWithImpl<$Res, FollowPageIvo>;
  @useResult
  $Res call({UserInfo user, int initialPageIndex});

  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$FollowPageIvoCopyWithImpl<$Res, $Val extends FollowPageIvo>
    implements $FollowPageIvoCopyWith<$Res> {
  _$FollowPageIvoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? initialPageIndex = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      initialPageIndex: null == initialPageIndex
          ? _value.initialPageIndex
          : initialPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res> get user {
    return $UserInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowPageIvoImplCopyWith<$Res>
    implements $FollowPageIvoCopyWith<$Res> {
  factory _$$FollowPageIvoImplCopyWith(
          _$FollowPageIvoImpl value, $Res Function(_$FollowPageIvoImpl) then) =
      __$$FollowPageIvoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserInfo user, int initialPageIndex});

  @override
  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$$FollowPageIvoImplCopyWithImpl<$Res>
    extends _$FollowPageIvoCopyWithImpl<$Res, _$FollowPageIvoImpl>
    implements _$$FollowPageIvoImplCopyWith<$Res> {
  __$$FollowPageIvoImplCopyWithImpl(
      _$FollowPageIvoImpl _value, $Res Function(_$FollowPageIvoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? initialPageIndex = null,
  }) {
    return _then(_$FollowPageIvoImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      initialPageIndex: null == initialPageIndex
          ? _value.initialPageIndex
          : initialPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FollowPageIvoImpl implements _FollowPageIvo {
  _$FollowPageIvoImpl({required this.user, required this.initialPageIndex});

  @override
  final UserInfo user;
  @override
  final int initialPageIndex;

  @override
  String toString() {
    return 'FollowPageIvo(user: $user, initialPageIndex: $initialPageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowPageIvoImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.initialPageIndex, initialPageIndex) ||
                other.initialPageIndex == initialPageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, initialPageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowPageIvoImplCopyWith<_$FollowPageIvoImpl> get copyWith =>
      __$$FollowPageIvoImplCopyWithImpl<_$FollowPageIvoImpl>(this, _$identity);
}

abstract class _FollowPageIvo implements FollowPageIvo {
  factory _FollowPageIvo(
      {required final UserInfo user,
      required final int initialPageIndex}) = _$FollowPageIvoImpl;

  @override
  UserInfo get user;
  @override
  int get initialPageIndex;
  @override
  @JsonKey(ignore: true)
  _$$FollowPageIvoImplCopyWith<_$FollowPageIvoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
