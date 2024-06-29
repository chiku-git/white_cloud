import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:white_cloud/importer.dart';

class ApiRepository {
  static ApiRepository? _instance;

  factory ApiRepository() {
    return _instance ??
        (() {
          return _instance = ApiRepository._();
        })();
  }

  ApiRepository._() {
    _client = ApiClient();
  }

  late final ApiClient _client;

  /// 認証コードを送信する
  Future<ApiResult<SendAuthCodeResponse>> sendAuthCode({
    required String email,
  }) async {
    return await _client.sendAuthCode(
      request: SendAuthCodeRequest(
        email: email,
      ),
    );
  }

  /// メールアドレスを認証する
  Future<ApiResult<AuthenticateEmailResponse>> authenticateEmail({
    required String email,
    required String code,
  }) async {
    return await _client.authenticateEmail(
      request: AuthenticateEmailRequest(
        email: email,
        code: code,
      ),
    );
  }

  /// 会員登録する
  Future<ApiResult<RegisterUserResponse>> registerUser({
    required UserFormData user,
  }) async {
    final request = FormData.fromMap(
      {
        "user": MultipartFile.fromString(
            json.encode(user.toJson()),
            contentType: MediaType.parse('application/json'),
        ),
        "image": user.image != null && user.image!.bytes != null
            ? MultipartFile.fromBytes(
                user.image!.bytes!,
                filename: user.image!.fileName,
                contentType: MediaType.parse(user.image!.mimeType),
              )
            : null
      },
      ListFormat.multiCompatible,
    );
    return await _client.registerUser(request: request);
  }
}
