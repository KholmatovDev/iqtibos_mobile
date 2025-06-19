// core/dio_client.dart
import 'package:dio/dio.dart';

class DioClient {
  static Dio createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: "https://iqtibos-backend.onrender.com/api",
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        contentType: "application/json",
      ),
    );

    dio.interceptors.add(LogInterceptor(responseBody: true));
    return dio;
  }
}
