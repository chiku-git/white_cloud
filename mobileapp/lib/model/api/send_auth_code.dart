import 'package:white_cloud/importer.dart';

part 'send_auth_code.freezed.dart';
part 'send_auth_code.g.dart';

@freezed
class SendAuthCodeRequest with _$SendAuthCodeRequest {
  factory SendAuthCodeRequest({
    required String email,
  }) = _SendAuthCodeRequest;

  factory SendAuthCodeRequest.fromJson(Map<String, dynamic> json)
    => _$SendAuthCodeRequestFromJson(json);
}

@freezed
class SendAuthCodeResponse with _$SendAuthCodeResponse {
  factory SendAuthCodeResponse({
    required String email,
  }) = _SendAuthCodeResponse;

  factory SendAuthCodeResponse.fromJson(Map<String, dynamic> json)
    => _$SendAuthCodeResponseFromJson(json);
}