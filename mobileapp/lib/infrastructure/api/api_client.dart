import 'package:dio/dio.dart';
import 'package:white_cloud/importer.dart';

import '../../model/api/search_user.dart';

class ApiClient {
  static ApiClient? _instance;
  late final AppDio _dio;
  ApiService get _service => ApiService(_dio);

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
  late String _token;

  /// 認証情報
  String get _authorization => "Token $_token";

  /// 認証コードを送信する
  Future<ApiResult<SendAuthCodeResponse>> sendAuthCode({
    required SendAuthCodeRequest request,
  }) async {
    try {
      final response = await _service.sendAuthCode(request);
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
      final response = await _service.authenticateEmail(request);
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
      final response = await _service.registerUser(request);
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
      final response = await _service.login(request);
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
      final response = await _service.createPost(
          _authorization,
          request
      );
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
      final response = await _service.searchUser(
          _authorization,
          request
      );
      return ApiResult<SearchUserResponse>.onSuccess(response.data!);
    } catch (error) {
      return _handleCommonError<SearchUserResponse>(error: error);
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
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
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
