import 'package:white_cloud/importer.dart';

part 'api_result.freezed.dart';

@Freezed(genericArgumentFactories: true)
abstract class ApiResult<T> with _$ApiResult<T> {
  /// 成功時コールバック
  factory ApiResult.onSuccess(T data) = Success<T>;
  /// 失敗時コールバック
  factory ApiResult.onFailure(ErrorResponse error) = Failure<T>;
  /// キャンセル時コールバック
  factory ApiResult.onCancel() = Cancel<T>;
}