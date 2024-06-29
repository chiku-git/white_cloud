import 'package:white_cloud/importer.dart';

part 'user_form_data.freezed.dart';

@freezed
abstract class UserFormData implements _$UserFormData {
  UserFormData._();
  factory UserFormData({
    required String userName,
    required String password,
    required String bio,
    required String email,
    ImageData? image,
  }) = _UserFormData;

  factory UserFormData.init({
    String? userName,
    String? bio,
    String? email,
    ImageData? image,
  }) =>
      UserFormData(
          userName: userName ?? "",
          password: "",
          bio: bio ?? "",
          email: email ?? "",
          image: image);

  bool isValid() =>
      userName.isNotEmpty &&
      password.isNotEmpty &&
      email.isNotEmpty &&
      PasswordValidator().validate(password).isOK;

  Map<String, dynamic> toJson() {
    return {
      "userName": userName,
      "password": password,
      "bio": bio,
      "email": email,
    };
  }
}

@freezed
abstract class ImageData implements _$ImageData {
  ImageData._();

  factory ImageData({
    @Default("image") String fileName,
    @Default("image/jpg") String mimeType,
    Uint8List? bytes,
  }) = _ImageData;
}
