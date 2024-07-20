import 'package:white_cloud/importer.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  factory ApiResponse({
    T? data,
    ErrorResponse? error,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$ApiResponseFromJson(json, fromJsonT);
}

@freezed
class ErrorResponse with _$ErrorResponse {
  factory ErrorResponse({
    required String code,
    required String message,
    required dynamic detail,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ErrorResponseFromJson(json);

  /// システムエラー
  factory ErrorResponse.systemError({required String? detail}) {
    return ErrorResponse(
        code: "ERR_SYSTEM_ERROR",
        message: Strings.systemErrorMessage,
        detail: detail ?? ""
    );
  }

  /// タイムアウトエラー
  factory ErrorResponse.timeoutError({required String? detail}) {
    return ErrorResponse(
        code: "ERR_TIMEOUT",
        message: Strings.timeoutErrorMessage,
        detail: detail ?? ""
    );
  }

  /// 接続エラー
  factory ErrorResponse.connectionError({required String? detail}) {
    return ErrorResponse(
        code: "ERR_CONNECTION_FAILURE",
        message: Strings.connectionErrorMessage,
        detail: detail ?? ""
    );
  }

  /// その他のエラー
  factory ErrorResponse.unexpectedError({required String? detail}) {
    return ErrorResponse(
        code: "ERR_UNEXPECTED",
        message: Strings.unexpectedErrorMessage,
        detail: detail ?? ""
    );
  }
}
