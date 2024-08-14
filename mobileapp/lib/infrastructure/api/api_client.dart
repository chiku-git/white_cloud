import 'dart:collection';
import 'package:dio/dio.dart';
import 'package:white_cloud/importer.dart';

class ApiClient {
  static ApiClient? _instance;
  late final AppDio _dio;
  ApiService get _service => ApiService(_dio);
  final Queue<CancelToken> _cancelTokens = Queue();

  factory ApiClient() {
    return _instance ?? () {
      _instance = ApiClient._();
      return _instance!;
    }();
  }

  ApiClient._({AppDio? dio}) {
    _dio = dio ?? AppDio();
  }

  /// 認証トークン
  String _token = "";

  /// 認証情報
  String get _authorization => "Token $_token";

  /// 認証コードを送信する
  Future<ApiResult<SendAuthCodeResponse>> sendAuthCode({
    required SendAuthCodeRequest request,
  }) async {
    try {
      final response = await _request<SendAuthCodeResponse>((cancelToken) {
        return  _service.sendAuthCode(request);
      });
      return ApiResult<SendAuthCodeResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<SendAuthCodeResponse>(error: error);
    }
  }

  /// メールアドレスを認証する
  Future<ApiResult<AuthenticateEmailResponse>> authenticateEmail({
    required AuthenticateEmailRequest request,
  }) async {
    try {
      final response = await _request<AuthenticateEmailResponse>((cancelToken) {
        return  _service.authenticateEmail(request);
      });
      return ApiResult<AuthenticateEmailResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<AuthenticateEmailResponse>(error: error);
    }
  }

  /// 会員登録する
  Future<ApiResult<RegisterUserResponse>> registerUser({
    required FormData request,
  }) async {
    try {
      final response = await _request<RegisterUserResponse>((cancelToken) {
        return  _service.registerUser(request);
      });
      // 認証トークンをセットする
      _token = response.data!.token;
      return ApiResult<RegisterUserResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<RegisterUserResponse>(error: error);
    }
  }

  /// ログイン
  Future<ApiResult<LoginResponse>> login({
    required LoginRequest request,
  }) async {
    try {
      final response = await _request<LoginResponse>((cancelToken) {
        return  _service.login(request);
      });
      // 認証トークンをセットする
      _token = response.data!.token;
      return ApiResult<LoginResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<LoginResponse>(error: error);
    }
  }

  /// 投稿
  Future<ApiResult<CreatePostResponse>> createPost({
    required CreatePostRequest request,
  }) async {
    try {
      final response = await _request<CreatePostResponse>((cancelToken) {
        return  _service.createPost(_authorization, request);
      });
      return ApiResult<CreatePostResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<CreatePostResponse>(error: error);
    }
  }

  /// 会員検索
  Future<ApiResult<SearchUserResponse>> searchUser({
    required SearchUserRequest request,
  }) async {
    try {
      final response = await _request<SearchUserResponse>((cancelToken) {
        return _service.searchUser(_authorization, request, cancelToken);
      });
      return ApiResult<SearchUserResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<SearchUserResponse>(error: error);
    }
  }

  /// 投稿検索
  Future<ApiResult<SearchPostsResponse>> searchPost({
    required SearchPostsRequest request,
  }) async {
    try {
      final response = await _request<SearchPostsResponse>((cancelToken) {
        return _service.searchPost(_authorization, request, cancelToken);
      });
      return ApiResult<SearchPostsResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<SearchPostsResponse>(error: error);
    }
  }

  /// ダイジェスト取得
  Future<ApiResult<GetDigestPostsResponse>> getDigestPosts({
    required GetDigestPostsRequest request,
  }) async {
    try {
      final response = await _request<GetDigestPostsResponse>((cancelToken) {
        return _service.getDigestPosts(_authorization, request, cancelToken);
      });
      return ApiResult<GetDigestPostsResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<GetDigestPostsResponse>(error: error);
    }
  }

  /// お気に入り登録／解除
  Future<ApiResult<FavoriteToggleResponse>> toggleFavorite({
    required FavoriteToggleRequest request,
  }) async {
    try {
      final response = await _request<FavoriteToggleResponse>((cancelToken) {
        return _service.toggleFavorite(_authorization, request, cancelToken);
      });
      return ApiResult<FavoriteToggleResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<FavoriteToggleResponse>(error: error);
    }
  }

  /// 投稿返信
  Future<ApiResult<ReplyPostResponse>> replyPost({
    required ReplyPostRequest request,
  }) async {
    try {
      final response = await _request<ReplyPostResponse>((cancelToken) {
        return _service.replyPost(_authorization, request, cancelToken);
      });
      return ApiResult<ReplyPostResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<ReplyPostResponse>(error: error);
    }
  }

  Future<ApiResponse<T>> _request<T>(Function(CancelToken) caller) async {
    // リクエスト前処理
    final cancelToken = CancelToken();
    _cancelTokens.add(cancelToken);
    // リクエスト
    final response = await caller.call(cancelToken);
    // リクエスト後処理
    _cancelTokens.remove(cancelToken);
    // 結果を返却
    return response;
  }

  /// すべてのAPI処理をキャンセルする
  cancelAllRequests() {
    while(_cancelTokens.isNotEmpty) {
      final cancelToken = _cancelTokens.removeFirst();
      if (!cancelToken.isCancelled) {
        cancelToken.cancel();
      }
    }
  }

  /// WebAPIで共通となるエラーをハンドルする
  ApiResult<T> _handleCommonError<T>({required Object error}) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.badResponse:
          // 業務エラー
          final errorBody = error.response?.data['error'];
          final status = error.response?.statusCode ?? 999;
          if (400 <= status && status < 600 && errorBody != null) {
            return ApiResult<T>.onFailure(ErrorResponse.fromJson(errorBody));
          } else {
            return ApiResult<T>.onFailure(
                ErrorResponse.systemError(detail: error.message));
          }
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          // タイムアウト
          return ApiResult<T>.onFailure(
              ErrorResponse.timeoutError(detail: error.message));
        case DioExceptionType.connectionError:
          // 接続エラー
          return ApiResult<T>.onFailure(
              ErrorResponse.connectionError(detail: error.message));
        case DioExceptionType.cancel:
          // ユーザーキャンセル
          return ApiResult<T>.onCancel();
        case DioExceptionType.badCertificate:
        case DioExceptionType.unknown:
          // その他エラー
          return ApiResult<T>.onFailure(
              ErrorResponse.unexpectedError(detail: error.message));
      }
    } else {
      // その他エラー
      return ApiResult<T>.onFailure(
          ErrorResponse.unexpectedError(detail: error.toString()));
    }
  }
}
