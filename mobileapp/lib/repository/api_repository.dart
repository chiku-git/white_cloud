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
}
