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

import '../../features/post/data/repositories/remote_repository.dart' as _i728;
import '../../features/post/domain/repositories/post_repository.dart' as _i786;
import '../../features/post/domain/use_case/post_use_case.dart' as _i385;
import '../../features/post/presentation/bloc/post_bloc.dart' as _i896;
import '../../features/post_detail/presentation/bloc/post_detail_bloc.dart'
    as _i213;
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
    final dioModule = _$DioModule();
    final clientModule = _$ClientModule();
    gh.factory<_i213.PostDetailBloc>(() => _i213.PostDetailBloc());
    gh.factory<_i836.IConfig>(() => _i836.AppConfig());
    gh.singleton<_i361.Dio>(() => dioModule.dio(gh<_i836.IConfig>()));
    gh.singleton<_i238.PinAppClient>(
      () => clientModule.pinAppClient(gh<_i361.Dio>()),
    );
    gh.factory<_i786.PostRepository>(
      () => _i728.RemoteRepository(client: gh<_i238.PinAppClient>()),
    );
    gh.factory<_i385.PostUseCase>(
      () => _i385.PostUseCase(repository: gh<_i786.PostRepository>()),
    );
    gh.factory<_i896.PostBloc>(
      () => _i896.PostBloc(useCase: gh<_i385.PostUseCase>()),
    );
    return this;
  }
}

class _$DioModule extends _i545.DioModule {}

class _$ClientModule extends _i711.ClientModule {}
