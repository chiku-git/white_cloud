import 'package:white_cloud/importer.dart';

part 'email_vo.freezed.dart';

@freezed
class EmailVO with _$EmailVO {
  factory EmailVO({
    required EmailState state,
    required String email,
    ErrorResponse? sendAuthCodeError,
  }) = _EmailVO;

  /// 初期データ取得
  factory EmailVO.init() => EmailVO(
        state: EmailState.empty,
        email: "",
        sendAuthCodeError: null,
      );
}
