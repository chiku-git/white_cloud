import 'package:white_cloud/importer.dart';

part 'email_auth_vo.freezed.dart';

@freezed
class EmailAuthVO with _$EmailAuthVO {
  factory EmailAuthVO({
    required List<String> digits,
    required EmailAuthState authState,
    required int length,
    required ErrorResponse? error,
  }) = _EmailAuthVO;

  factory EmailAuthVO.init(int length) => EmailAuthVO(
      digits: List.generate(length, (_) => ""),
      authState: EmailAuthState.idle,
      length: length,
      error: null,
  );
}

enum EmailAuthState {
  idle,
  authenticating,
  authSuccess,
  authFailed,
  ;

  get hasError => this == authFailed;
}
