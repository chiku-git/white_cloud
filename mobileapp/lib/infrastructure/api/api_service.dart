import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:white_cloud/importer.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'http://10.0.2.2:8000/api')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  /// 認証コード送信API
  @POST('/account/send-auth-code/v1/')
  Future<ApiResponse<SendAuthCodeResponse>> sendAuthCode(
      @Body() SendAuthCodeRequest request);

  /// メールアドレス認証API
  @POST('/account/authenticate-email/v1/')
  Future<ApiResponse<AuthenticateEmailResponse>> authenticateEmail(
      @Body() AuthenticateEmailRequest request);

  /// 会員登録API
  @POST('/account/register/v1/')
  Future<ApiResponse<RegisterUserResponse>> registerUser(
      @Body() FormData request);
}
