// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserForm {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  ImageData? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFormCopyWith<UserForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormCopyWith<$Res> {
  factory $UserFormCopyWith(UserForm value, $Res Function(UserForm) then) =
      _$UserFormCopyWithImpl<$Res, UserForm>;
  @useResult
  $Res call(
      {String userName,
      String password,
      String bio,
      String email,
      ImageData? image});

  $ImageDataCopyWith<$Res>? get image;
}

/// @nodoc
class _$UserFormCopyWithImpl<$Res, $Val extends UserForm>
    implements $UserFormCopyWith<$Res> {
  _$UserFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
    Object? bio = null,
    Object? email = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageDataCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageDataCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserFormImplCopyWith<$Res>
    implements $UserFormCopyWith<$Res> {
  factory _$$UserFormImplCopyWith(
          _$UserFormImpl value, $Res Function(_$UserFormImpl) then) =
      __$$UserFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      String password,
      String bio,
      String email,
      ImageData? image});

  @override
  $ImageDataCopyWith<$Res>? get image;
}

/// @nodoc
class __$$UserFormImplCopyWithImpl<$Res>
    extends _$UserFormCopyWithImpl<$Res, _$UserFormImpl>
    implements _$$UserFormImplCopyWith<$Res> {
  __$$UserFormImplCopyWithImpl(
      _$UserFormImpl _value, $Res Function(_$UserFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
    Object? bio = null,
    Object? email = null,
    Object? image = freezed,
  }) {
    return _then(_$UserFormImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageData?,
    ));
  }
}

/// @nodoc

class _$UserFormImpl extends _UserForm {
  _$UserFormImpl(
      {required this.userName,
      required this.password,
      required this.bio,
      required this.email,
      this.image})
      : super._();

  @override
  final String userName;
  @override
  final String password;
  @override
  final String bio;
  @override
  final String email;
  @override
  final ImageData? image;

  @override
  String toString() {
    return 'UserForm(userName: $userName, password: $password, bio: $bio, email: $email, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFormImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, password, bio, email, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFormImplCopyWith<_$UserFormImpl> get copyWith =>
      __$$UserFormImplCopyWithImpl<_$UserFormImpl>(this, _$identity);
}

abstract class _UserForm extends UserForm {
  factory _UserForm(
      {required final String userName,
      required final String password,
      required final String bio,
      required final String email,
      final ImageData? image}) = _$UserFormImpl;
  _UserForm._() : super._();

  @override
  String get userName;
  @override
  String get password;
  @override
  String get bio;
  @override
  String get email;
  @override
  ImageData? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserFormImplCopyWith<_$UserFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageData {
  String get fileName => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  Uint8List? get bytes => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageDataCopyWith<ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataCopyWith<$Res> {
  factory $ImageDataCopyWith(ImageData value, $Res Function(ImageData) then) =
      _$ImageDataCopyWithImpl<$Res, ImageData>;
  @useResult
  $Res call({String fileName, String mimeType, Uint8List? bytes, String? url});
}

/// @nodoc
class _$ImageDataCopyWithImpl<$Res, $Val extends ImageData>
    implements $ImageDataCopyWith<$Res> {
  _$ImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? mimeType = null,
    Object? bytes = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDataImplCopyWith<$Res>
    implements $ImageDataCopyWith<$Res> {
  factory _$$ImageDataImplCopyWith(
          _$ImageDataImpl value, $Res Function(_$ImageDataImpl) then) =
      __$$ImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileName, String mimeType, Uint8List? bytes, String? url});
}

/// @nodoc
class __$$ImageDataImplCopyWithImpl<$Res>
    extends _$ImageDataCopyWithImpl<$Res, _$ImageDataImpl>
    implements _$$ImageDataImplCopyWith<$Res> {
  __$$ImageDataImplCopyWithImpl(
      _$ImageDataImpl _value, $Res Function(_$ImageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? mimeType = null,
    Object? bytes = freezed,
    Object? url = freezed,
  }) {
    return _then(_$ImageDataImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ImageDataImpl extends _ImageData {
  _$ImageDataImpl(
      {this.fileName = "image",
      this.mimeType = "image/jpg",
      this.bytes,
      this.url})
      : super._();

  @override
  @JsonKey()
  final String fileName;
  @override
  @JsonKey()
  final String mimeType;
  @override
  final Uint8List? bytes;
  @override
  final String? url;

  @override
  String toString() {
    return 'ImageData(fileName: $fileName, mimeType: $mimeType, bytes: $bytes, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDataImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, mimeType,
      const DeepCollectionEquality().hash(bytes), url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDataImplCopyWith<_$ImageDataImpl> get copyWith =>
      __$$ImageDataImplCopyWithImpl<_$ImageDataImpl>(this, _$identity);
}

abstract class _ImageData extends ImageData {
  factory _ImageData(
      {final String fileName,
      final String mimeType,
      final Uint8List? bytes,
      final String? url}) = _$ImageDataImpl;
  _ImageData._() : super._();

  @override
  String get fileName;
  @override
  String get mimeType;
  @override
  Uint8List? get bytes;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$ImageDataImplCopyWith<_$ImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
