import 'package:dio/dio.dart';
import 'package:white_cloud/importer.dart';

class ApiClient {
  late final AppDio _dio;
  ApiService get _service => ApiService(_dio);

  ApiClient({AppDio? dio}) {
    _dio = dio ?? AppDio();
  }

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
