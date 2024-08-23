import 'package:white_cloud/importer.dart';

part 'get_digest_post.freezed.dart';
part 'get_digest_post.g.dart';

@freezed
class GetDigestPostRequest with _$GetDigestPostRequest {
  factory GetDigestPostRequest({
    required String id,
  }) = _GetDigestPostRequest;

  factory GetDigestPostRequest.fromJson(Map<String, dynamic> json)
    => _$GetDigestPostRequestFromJson(json);
}

@freezed
class GetDigestPostResponse with _$GetDigestPostResponse {
  factory GetDigestPostResponse({
    required PostDigest digest,
  }) = _GetDigestPostResponse;

  factory GetDigestPostResponse.fromJson(Map<String, dynamic> json)
    => _$GetDigestPostResponseFromJson(json);
}