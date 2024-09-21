import 'package:dio/dio.dart';
import 'package:white_cloud/importer.dart';
import 'package:retrofit/retrofit.dart';
import 'package:white_cloud/model/api/get_user_digests.dart';
import 'package:white_cloud/model/api/update_user.dart';
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
  Future<ApiResponse<LoginResponse>> login(@Body() LoginRequest request);

  /// 投稿作成API
  @POST('/post/create/v1/')
  Future<ApiResponse<CreatePostResponse>> createPost(
      @Header('Authorization') String token,
      @Body() CreatePostRequest request);

  /// 会員検索API
  @POST('/account/search/users/v1/')
  Future<ApiResponse<SearchUserResponse>> searchUser(
      @Header('Authorization') String token,
      @Body() SearchUserRequest request,
      @CancelRequest() CancelToken cancelToken,);

  /// 投稿検索API
  @POST('/post/search/v1/')
  Future<ApiResponse<SearchPostsResponse>> searchPost(
      @Header('Authorization') String token,
      @Body() SearchPostsRequest request,
      @CancelRequest() CancelToken cancelToken,);

  /// ダイジェスト取得API
  @POST('/post/digests/v1/')
  Future<ApiResponse<GetDigestPostsResponse>> getDigestPosts(
      @Header('Authorization') String token,
      @Body() GetDigestPostsRequest request,
      @CancelRequest() CancelToken cancelToken,);

  /// お気に入り登録／解除API
  @POST('/post/favorite/toggle/v1/')
  Future<ApiResponse<FavoriteToggleResponse>> toggleFavorite(
      @Header('Authorization') String token,
      @Body() FavoriteToggleRequest request,
      @CancelRequest() CancelToken cancelToken,);

  /// 投稿返信API
  @POST('/post/reply/v1/')
  Future<ApiResponse<ReplyPostResponse>> replyPost(
      @Header('Authorization') String token,
      @Body() ReplyPostRequest request,
      @CancelRequest() CancelToken cancelToken,);

  /// 返信取得API
  @POST('/post/replies/v1/')
  Future<ApiResponse<GetRepliesResponse>> getReplies(
      @Header('Authorization') String token,
      @Body() GetRepliesRequest request,
      @CancelRequest() CancelToken cancelToken,);

  /// ダイジェスト取得（単独）API
  @POST('/post/digest/v1/')
  Future<ApiResponse<GetDigestPostResponse>> getDigestPost(
      @Header('Authorization') String token,
      @Body() GetDigestPostRequest request,
      @CancelRequest() CancelToken cancelToken,);

  /// お気に入り取得API
  @POST('/post/favorites/v1/')
  Future<ApiResponse<GetFavoritesResponse>> getFavorites(
      @Header('Authorization') String token,
      @Body() GetFavoritesRequest request,
      @CancelRequest() CancelToken cancelToken,);

  /// ユーザ投稿ダイジェスト取得API
  @POST('/post/user-digests/v1/')
  Future<ApiResponse<GetUserDigestsResponse>> getUserDigests(
      @Header('Authorization') String token,
      @Body() GetUserDigestsRequest request,
      @CancelRequest() CancelToken cancelToken,);

  /// 会員更新API
  @POST('/account/update/v1/')
  Future<ApiResponse<UpdateUserResponse>> updateUser(
      @Header('Authorization') String token,
      @Body() FormData request,
      @CancelRequest() CancelToken cancelToken);
}