// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_page_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FollowPageViewModel {
  UserInfo get user => throw _privateConstructorUsedError;
  int get initialPageIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowPageViewModelCopyWith<FollowPageViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowPageViewModelCopyWith<$Res> {
  factory $FollowPageViewModelCopyWith(
          FollowPageViewModel value, $Res Function(FollowPageViewModel) then) =
      _$FollowPageViewModelCopyWithImpl<$Res, FollowPageViewModel>;
  @useResult
  $Res call({UserInfo user, int initialPageIndex});

  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$FollowPageViewModelCopyWithImpl<$Res, $Val extends FollowPageViewModel>
    implements $FollowPageViewModelCopyWith<$Res> {
  _$FollowPageViewModelCopyWithImpl(this._value, this._then);

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
abstract class _$$FollowPageViewModelImplCopyWith<$Res>
    implements $FollowPageViewModelCopyWith<$Res> {
  factory _$$FollowPageViewModelImplCopyWith(_$FollowPageViewModelImpl value,
          $Res Function(_$FollowPageViewModelImpl) then) =
      __$$FollowPageViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserInfo user, int initialPageIndex});

  @override
  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$$FollowPageViewModelImplCopyWithImpl<$Res>
    extends _$FollowPageViewModelCopyWithImpl<$Res, _$FollowPageViewModelImpl>
    implements _$$FollowPageViewModelImplCopyWith<$Res> {
  __$$FollowPageViewModelImplCopyWithImpl(_$FollowPageViewModelImpl _value,
      $Res Function(_$FollowPageViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? initialPageIndex = null,
  }) {
    return _then(_$FollowPageViewModelImpl(
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

class _$FollowPageViewModelImpl extends _FollowPageViewModel {
  _$FollowPageViewModelImpl(
      {required this.user, required this.initialPageIndex})
      : super._();

  @override
  final UserInfo user;
  @override
  final int initialPageIndex;

  @override
  String toString() {
    return 'FollowPageViewModel(user: $user, initialPageIndex: $initialPageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowPageViewModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.initialPageIndex, initialPageIndex) ||
                other.initialPageIndex == initialPageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, initialPageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowPageViewModelImplCopyWith<_$FollowPageViewModelImpl> get copyWith =>
      __$$FollowPageViewModelImplCopyWithImpl<_$FollowPageViewModelImpl>(
          this, _$identity);
}

abstract class _FollowPageViewModel extends FollowPageViewModel {
  factory _FollowPageViewModel(
      {required final UserInfo user,
      required final int initialPageIndex}) = _$FollowPageViewModelImpl;
  _FollowPageViewModel._() : super._();

  @override
  UserInfo get user;
  @override
  int get initialPageIndex;
  @override
  @JsonKey(ignore: true)
  _$$FollowPageViewModelImplCopyWith<_$FollowPageViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
