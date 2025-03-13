import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pin_app/core/http/pin_app_client.dart';

@module
abstract class ClientModule {
  @singleton
  PinAppClient pinAppClient(Dio dio) => PinAppClient(dio);
}
