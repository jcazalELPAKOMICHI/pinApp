import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:pin_app/core/http/ic_config.dart';
import 'package:pin_app/core/interceptors/internet_checker_interceptor.dart';
import 'package:logger/logger.dart';

@module
abstract class DioModule {
  @singleton
  Dio dio(IConfig config) {
    Dio dio =
        Dio(
            BaseOptions(
              baseUrl: config.baseUrl,
              connectTimeout: const Duration(seconds: 60),
              sendTimeout: const Duration(seconds: 60),
              receiveTimeout: const Duration(seconds: 60),
              headers: config.headers,
            ),
          )
          ..interceptors.add(InternetCheckerInterceptor())
          ..interceptors.add(DioInterceptor());

    return dio;
  }
}

class DioInterceptor extends Interceptor {
  var logger = Logger();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    logger.t(options.data.toString());
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    logger.i(response.toString());
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    logger.e(err.type.name, error: err.response.toString());
  }
}
