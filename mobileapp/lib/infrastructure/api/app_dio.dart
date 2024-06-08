import 'package:dio/dio.dart';

class AppDio extends DioMixin {
  static AppDio? _instance;

  factory AppDio() {
    if (_instance != null) return _instance!;

    final dio = AppDio._()
      ..options = BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        contentType: 'application/json',
      )
      ..httpClientAdapter = HttpClientAdapter()
      ..interceptors.addAll([
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
        ),
      ]);

    _instance = dio;
    return dio;
  }

  AppDio._();
}