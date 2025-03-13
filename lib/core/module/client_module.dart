import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pin_app/core/http/pin_app_client.dart';
import 'package:pin_app/core/injectable/config.dart';

@module
abstract class ClientModule {
  PinAppClient get pinAppClient => PinAppClient(getIt.get<Dio>());
}
