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
import 'package:your_health/core/di/module_injection.dart' as _i888;
import 'package:your_health/features/dynamics/data/data_sources/remote/dynamics_api_service.dart'
    as _i110;
import 'package:your_health/features/dynamics/data/repositories/dynamics_repository_impl.dart'
    as _i23;
import 'package:your_health/features/dynamics/domain/repository/dynamics_repository.dart'
    as _i39;
import 'package:your_health/features/dynamics/domain/usecases/get_dynamics.dart'
    as _i177;
import 'package:your_health/features/dynamics/presentation/bloc/dynamics_bloc.dart'
    as _i172;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio());
    gh.lazySingleton<_i110.DynamicsApiService>(
        () => _i110.DynamicsApiService(gh<_i361.Dio>()));
    gh.lazySingleton<_i39.DynamicsRepository>(
        () => _i23.DynamicsRepositoryImpl(gh<_i110.DynamicsApiService>()));
    gh.lazySingleton<_i177.GetDynamicsUseCase>(
        () => _i177.GetDynamicsUseCase(gh<_i39.DynamicsRepository>()));
    gh.factory<_i172.DynamicsBloc>(
        () => _i172.DynamicsBloc(gh<_i177.GetDynamicsUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i888.RegisterModule {}
