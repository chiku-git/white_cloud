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
    required UserForm form,
  }) async {
    final request = FormData.fromMap(
      {
        "user": MultipartFile.fromString(
            json.encode(form.toJson()),
            contentType: MediaType.parse('application/json'),
        ),
        "image": form.image != null && form.image!.bytes != null
            ? MultipartFile.fromBytes(
                form.image!.bytes!,
                filename: form.image!.fileName,
                contentType: MediaType.parse(form.image!.mimeType),
              )
            : null
      },
      ListFormat.multiCompatible,
    );
    return await _client.registerUser(request: request);
  }

  /// ログインする
  Future<ApiResult<LoginResponse>> login({
    required String email,
    required String password,
  }) async {
    return await _client.login(
      request: LoginRequest(
        email: email,
        password: password,
      ),
    );
  }

  /// 新規投稿する
  Future<ApiResult<CreatePostResponse>> createPost({
    required String body,
  }) async {
    return await _client.createPost(
      request: CreatePostRequest(
        body: body
      ),
    );
  }

  /// 会員を検索する
  Future<ApiResult<SearchUserResponse>> searchUser({
    required String keyword,
    required int page,
  }) async {
    return await _client.searchUser(
      request: SearchUserRequest(
          keyword: keyword,
          page: page,
      ),
    );
  }

  /// 投稿を検索する
  Future<ApiResult<SearchPostsResponse>> searchPost({
    required String keyword,
    required int page,
  }) async {
    return await _client.searchPost(
      request: SearchPostsRequest(
        keyword: keyword,
        page: page,
      ),
    );
  }
}
