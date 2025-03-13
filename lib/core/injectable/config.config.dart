// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../http/ic_config.dart' as _i836;
import '../http/pin_app_client.dart' as _i238;
import '../module/client_module.dart' as _i711;
import '../module/dio_module.dart' as _i545;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final clientModule = _$ClientModule();
    final dioModule = _$DioModule();
    gh.factory<_i238.PinAppClient>(() => clientModule.pinAppClient);
    gh.factory<_i836.IConfig>(() => _i836.AppConfig());
    gh.singleton<_i361.Dio>(() => dioModule.dio(gh<_i836.IConfig>()));
    return this;
  }
}

class _$ClientModule extends _i711.ClientModule {}

class _$DioModule extends _i545.DioModule {}
