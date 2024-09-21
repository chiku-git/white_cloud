import 'package:white_cloud/importer.dart';

part 'user_form.freezed.dart';

@freezed
abstract class UserForm implements _$UserForm {
  UserForm._();
  factory UserForm({
    required String userName,
    required String password,
    required String bio,
    required String email,
    ImageData? image,
  }) = _UserForm;

  factory UserForm.init({
    String? userName,
    String? bio,
    String? email,
    ImageData? image,
  }) =>
      UserForm(
          userName: userName ?? "",
          password: "",
          bio: bio ?? "",
          email: email ?? "",
          image: image);

  get isValid =>
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
    String? url,
  }) = _ImageData;
}
