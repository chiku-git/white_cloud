// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityPageModel {
  ActivityType get currentType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityPageModelCopyWith<ActivityPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityPageModelCopyWith<$Res> {
  factory $ActivityPageModelCopyWith(
          ActivityPageModel value, $Res Function(ActivityPageModel) then) =
      _$ActivityPageModelCopyWithImpl<$Res, ActivityPageModel>;
  @useResult
  $Res call({ActivityType currentType});
}

/// @nodoc
class _$ActivityPageModelCopyWithImpl<$Res, $Val extends ActivityPageModel>
    implements $ActivityPageModelCopyWith<$Res> {
  _$ActivityPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentType = null,
  }) {
    return _then(_value.copyWith(
      currentType: null == currentType
          ? _value.currentType
          : currentType // ignore: cast_nullable_to_non_nullable
              as ActivityType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityPageModelImplCopyWith<$Res>
    implements $ActivityPageModelCopyWith<$Res> {
  factory _$$ActivityPageModelImplCopyWith(_$ActivityPageModelImpl value,
          $Res Function(_$ActivityPageModelImpl) then) =
      __$$ActivityPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActivityType currentType});
}

/// @nodoc
class __$$ActivityPageModelImplCopyWithImpl<$Res>
    extends _$ActivityPageModelCopyWithImpl<$Res, _$ActivityPageModelImpl>
    implements _$$ActivityPageModelImplCopyWith<$Res> {
  __$$ActivityPageModelImplCopyWithImpl(_$ActivityPageModelImpl _value,
      $Res Function(_$ActivityPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentType = null,
  }) {
    return _then(_$ActivityPageModelImpl(
      currentType: null == currentType
          ? _value.currentType
          : currentType // ignore: cast_nullable_to_non_nullable
              as ActivityType,
    ));
  }
}

/// @nodoc

class _$ActivityPageModelImpl implements _ActivityPageModel {
  _$ActivityPageModelImpl({required this.currentType});

  @override
  final ActivityType currentType;

  @override
  String toString() {
    return 'ActivityPageModel(currentType: $currentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityPageModelImpl &&
            (identical(other.currentType, currentType) ||
                other.currentType == currentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityPageModelImplCopyWith<_$ActivityPageModelImpl> get copyWith =>
      __$$ActivityPageModelImplCopyWithImpl<_$ActivityPageModelImpl>(
          this, _$identity);
}

abstract class _ActivityPageModel implements ActivityPageModel {
  factory _ActivityPageModel({required final ActivityType currentType}) =
      _$ActivityPageModelImpl;

  @override
  ActivityType get currentType;
  @override
  @JsonKey(ignore: true)
  _$$ActivityPageModelImplCopyWith<_$ActivityPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
