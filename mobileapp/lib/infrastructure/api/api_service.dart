import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:white_cloud/importer.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: Config.apiUrlLocal)
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

  /// ログインAPI
  @POST('/account/login/v1/')
  Future<ApiResponse<LoginResponse>> login(
      @Body() LoginRequest request);

  /// 投稿作成API
  @POST('/post/create/v1/')
  Future<ApiResponse<CreatePostResponse>> createPost(
      @Header('Authorization') String token,
      @Body() CreatePostRequest request);

  /// 会員検索API
  @POST('/account/search/users/v1/')
  Future<ApiResponse<SearchUserResponse>> searchUser(
      @Header('Authorization') String token,
      @Body() SearchUserRequest request);

  /// 投稿検索API
  @POST('/post/search/v1/')
  Future<ApiResponse<SearchPostsResponse>> searchPost(
      @Header('Authorization') String token,
      @Body() SearchPostsRequest request);
}
