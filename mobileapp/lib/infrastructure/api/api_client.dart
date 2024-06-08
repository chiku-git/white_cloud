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
      return _handleCommonError(error: error);
    }
  }

  /// WebAPIで共通となるエラーをハンドルする
  ApiResult<SendAuthCodeResponse> _handleCommonError({required Object error}) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.badResponse:
          // 業務エラー
          final errorBody = error.response?.data['error'];
          final status = error.response?.statusCode ?? 999;
          if (400 <= status && status < 600 && errorBody != null) {
            return ApiResult.onFailure(ErrorResponse.fromJson(errorBody));
          } else {
            return ApiResult.onFailure(
                ErrorResponse.systemError(detail: error.message));
          }
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          // タイムアウト
          return ApiResult.onFailure(
              ErrorResponse.timeoutError(detail: error.message));
        case DioExceptionType.connectionError:
          // 接続エラー
          return ApiResult.onFailure(
              ErrorResponse.connectionError(detail: error.message));
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.unknown:
          // その他エラー
          return ApiResult.onFailure(
              ErrorResponse.unexpectedError(detail: error.message));
      }
    } else {
      // その他エラー
      return ApiResult.onFailure(
          ErrorResponse.unexpectedError(detail: error.toString()));
    }
  }
}
