import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:pin_app/core/http/ic_config.dart';
import 'package:pin_app/core/interceptors/internet_checker_interceptor.dart';

@module
abstract class DioModule {
  @singleton
  Dio dio(IConfig config) {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        headers: config.headers,
      ),
    )..interceptors.add(InternetCheckerInterceptor());

    return dio;
  }
}
