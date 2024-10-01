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

  /// ダイジェストを取得する
  Future<ApiResult<GetDigestPostsResponse>> getDigestPosts({
    required int page,
  }) async {
    return await _client.getDigestPosts(
      request: GetDigestPostsRequest(
        page: page,
      ),
    );
  }

  /// ダイジェストを取得する
  Future<ApiResult<GetDigestPostResponse>> getDigestPost({
    required String id,
  }) async {
    return await _client.getDigestPost(
      request: GetDigestPostRequest(
        id: id
      ),
    );
  }

  /// お気に入り登録 or 解除をする
  Future<ApiResult<FavoriteToggleResponse>> toggleFavorite({
    required PostInfo post,
  }) async {
    return await _client.toggleFavorite(
      request: FavoriteToggleRequest(
        postId: post.id
      ),
    );
  }

  /// 投稿に返信する
  Future<ApiResult<ReplyPostResponse>> replyPost({
    required PostInfo replyTo,
    required String body,
  }) async {
    return await _client.replyPost(
      request: ReplyPostRequest(
          replyToId: replyTo.id,
          body: body,
      ),
    );
  }

  /// 返信を取得する
  Future<ApiResult<GetRepliesResponse>> getReplies({
    required PostInfo post,
    required int page,
  }) async {
    return await _client.getReplies(
      request: GetRepliesRequest(
        postId: post.id,
        page: page
      ),
    );
  }

  /// お気に入りを取得する
  Future<ApiResult<GetFavoritesResponse>> getFavorites({
    required int page,
  }) async {
    return await _client.getFavorites(
      request: GetFavoritesRequest(
          page: page
      ),
    );
  }

  /// ユーザーの投稿ダイジェストを取得する
  Future<ApiResult<GetUserDigestsResponse>> getUserDigests({
    required int page,
    required UserInfo user,
  }) async {
    return await _client.getUserDigests(
      request: GetUserDigestsRequest(
          page: page,
          userId: user.id
      ),
    );
  }

  /// 会員更新する
  Future<ApiResult<UpdateUserResponse>> updateUser({
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
    return await _client.updateUser(request: request);
  }

  /// フォローする
  Future<ApiResult<FollowResponse>> follow({
    required String userId,
  }) async {
    return await _client.follow(
      request: FollowRequest(
          userId: userId
      ),
    );
  }

  /// フォロー解除する
  Future<ApiResult<UnFollowResponse>> unfollow({
    required String userId,
  }) async {
    return await _client.unFollow(
      request: UnFollowRequest(
          userId: userId
      ),
    );
  }

  cancelAllRequests() => _client.cancelAllRequests();
}
