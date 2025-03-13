import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

class InternetCheckerInterceptor extends Interceptor {
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none) &&
        err.response == null) {
      return handler.reject(
        NoInternetConnectionException(requestOptions: err.requestOptions),
      );
    }
    return handler.next(err);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    return handler.next(options);
  }
}

class NoInternetConnectionException extends DioError implements Exception {
  NoInternetConnectionException({required super.requestOptions});
}
