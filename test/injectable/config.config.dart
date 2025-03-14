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
import 'package:pin_app/core/http/ic_config.dart' as _i955;
import 'package:pin_app/core/http/pin_app_client.dart' as _i847;
import 'package:pin_app/core/module/client_module.dart' as _i196;
import 'package:pin_app/core/module/dio_module.dart' as _i725;
import 'package:pin_app/core/theme/bloc/theme_bloc.dart' as _i841;
import 'package:pin_app/features/post/data/repositories/remote_repository.dart'
    as _i382;
import 'package:pin_app/features/post/domain/repositories/post_repository.dart'
    as _i590;
import 'package:pin_app/features/post/domain/use_case/post_use_case.dart'
    as _i263;
import 'package:pin_app/features/post/presentation/bloc/post_bloc.dart'
    as _i521;
import 'package:pin_app/features/post_detail/data/repository/post_detail_repository_iml.dart'
    as _i201;
import 'package:pin_app/features/post_detail/domain/repository/post_detail_repository.dart'
    as _i599;
import 'package:pin_app/features/post_detail/domain/use_case/post_detail_use_case.dart'
    as _i896;
import 'package:pin_app/features/post_detail/presentation/bloc/post_detail_bloc.dart'
    as _i448;

import '../client_test.dart' as _i806;

const String _test = 'test';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt testInit({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    final clientModule = _$ClientModule();
    gh.factory<_i841.ThemeBloc>(() => _i841.ThemeBloc());
    gh.factory<_i955.IConfig>(() => _i955.AppConfig());
    gh.factory<_i590.PostRepository>(
      () => _i806.MockRemoteRepository(),
      registerFor: {_test},
    );
    gh.factory<_i263.PostUseCase>(
      () => _i263.PostUseCase(repository: gh<_i590.PostRepository>()),
    );
    gh.singleton<_i361.Dio>(() => dioModule.dio(gh<_i955.IConfig>()));
    gh.factory<_i521.PostBloc>(
      () => _i521.PostBloc(useCase: gh<_i263.PostUseCase>()),
    );
    gh.factory<_i599.PostDetailRepository>(
      () => _i201.PostDetailRepositoryIml(dio: gh<_i361.Dio>()),
    );
    gh.factory<_i896.PostDetailUseCase>(
      () =>
          _i896.PostDetailUseCase(repository: gh<_i599.PostDetailRepository>()),
    );
    gh.factory<_i448.PostDetailBloc>(
      () => _i448.PostDetailBloc(useCase: gh<_i896.PostDetailUseCase>()),
    );
    gh.singleton<_i847.PinAppClient>(
      () => clientModule.pinAppClient(gh<_i361.Dio>()),
    );
    gh.factory<_i590.PostRepository>(
      () => _i382.RemoteRepository(client: gh<_i847.PinAppClient>()),
    );
    return this;
  }
}

class _$DioModule extends _i725.DioModule {}

class _$ClientModule extends _i196.ClientModule {}
