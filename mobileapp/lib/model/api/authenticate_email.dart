import 'package:white_cloud/importer.dart';

part 'authenticate_email.freezed.dart';
part 'authenticate_email.g.dart';

@freezed
class AuthenticateEmailRequest with _$AuthenticateEmailRequest {
  factory AuthenticateEmailRequest({
    required String email,
    required String code,
  }) = _AuthenticateEmailRequest;

  factory AuthenticateEmailRequest.fromJson(Map<String, dynamic> json)
    => _$AuthenticateEmailRequestFromJson(json);
}

@freezed
class AuthenticateEmailResponse with _$AuthenticateEmailResponse {
  factory AuthenticateEmailResponse({
    required String email,
  }) = _AuthenticateEmailResponse;

  factory AuthenticateEmailResponse.fromJson(Map<String, dynamic> json)
    => _$AuthenticateEmailResponseFromJson(json);
}