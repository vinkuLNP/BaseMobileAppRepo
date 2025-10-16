// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_architecture/core/di/app_component/app_module.dart'
    as _i465;
import 'package:clean_architecture/core/utils/helpers/app_configurations_helper/app_configurations_helper.dart'
    as _i367;
import 'package:clean_architecture/core/utils/helpers/app_flavor_helper/app_flavors_helper.dart'
    as _i300;
import 'package:clean_architecture/core/utils/helpers/connectivity_helper/connectivity_helper/connectivity_checker_helper.dart'
    as _i33;
import 'package:clean_architecture/core/utils/helpers/http_strategy_helper/http_request_context.dart'
    as _i577;
import 'package:clean_architecture/core/utils/helpers/responsive_ui_helper/responsive_config.dart'
    as _i489;
import 'package:clean_architecture/features/weather_detail/data/datasources/local_datasource/local_database.dart'
    as _i830;
import 'package:clean_architecture/features/weather_detail/data/datasources/local_datasource/weather_local_datasource.dart'
    as _i87;
import 'package:clean_architecture/features/weather_detail/data/datasources/local_datasource/weather_local_datasource_impl.dart'
    as _i459;
import 'package:clean_architecture/features/weather_detail/data/datasources/remote_datasource/weather_remote_datasource.dart'
    as _i18;
import 'package:clean_architecture/features/weather_detail/data/datasources/remote_datasource/weather_remote_datasource_impl.dart'
    as _i549;
import 'package:clean_architecture/features/weather_detail/data/repositories/weather_repository_impl.dart'
    as _i841;
import 'package:clean_architecture/features/weather_detail/domain/repositories/weather_repository.dart'
    as _i938;
import 'package:clean_architecture/features/weather_detail/domain/usecases/get_all_local_weathers.dart'
    as _i644;
import 'package:clean_architecture/features/weather_detail/domain/usecases/get_weather_data_by_city.dart'
    as _i353;
import 'package:clean_architecture/features/weather_detail/domain/usecases/get_weather_data_by_coordinates.dart'
    as _i969;
import 'package:clean_architecture/features/weather_detail/presentation/add_new_city/add_new_city_viewmodel.dart'
    as _i878;
import 'package:clean_architecture/features/weather_detail/presentation/weather_details/weather_details_viewmodel.dart'
    as _i953;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i830.AppLocalDatabase>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.factory<_i33.ConnectivityCheckerHelper>(
      () => _i33.ConnectivityCheckerHelper(),
    );
    gh.singleton<_i489.ResponsiveUiConfig>(() => _i489.ResponsiveUiConfig());
    gh.singleton<_i300.AppFlavorsHelper>(() => _i300.AppFlavorsHelper());
    gh.singleton<_i367.AppConfigurations>(() => _i367.AppConfigurations());
    gh.factory<_i87.WeatherLocalDataSource>(
      () => _i459.WeatherRemoteDataSourceImpl(gh<_i830.AppLocalDatabase>()),
    );
    gh.factory<_i577.HttpRequestContext>(
      () => _i577.HttpRequestContext(gh<_i33.ConnectivityCheckerHelper>()),
    );
    gh.factory<_i18.WeatherRemoteDataSource>(
      () => _i549.WeatherRemoteDataSourceImpl(gh<_i577.HttpRequestContext>()),
    );
    gh.factory<_i938.WeatherRepository>(
      () => _i841.WeatherRepositoryImpl(
        remoteDataSource: gh<_i18.WeatherRemoteDataSource>(),
        localDataSource: gh<_i87.WeatherLocalDataSource>(),
      ),
    );
    gh.factory<_i969.GetWeatherDataByCoordinates>(
      () => _i969.GetWeatherDataByCoordinates(gh<_i938.WeatherRepository>()),
    );
    gh.factory<_i353.GetWeatherDataByCity>(
      () => _i353.GetWeatherDataByCity(gh<_i938.WeatherRepository>()),
    );
    gh.factory<_i644.GetAllLocalWeathers>(
      () => _i644.GetAllLocalWeathers(gh<_i938.WeatherRepository>()),
    );
    gh.factory<_i953.WeatherDetailsViewModel>(
      () => _i953.WeatherDetailsViewModel(
        gh<_i969.GetWeatherDataByCoordinates>(),
      ),
    );
    gh.factory<_i878.AddNewCityViewModel>(
      () => _i878.AddNewCityViewModel(
        gh<_i353.GetWeatherDataByCity>(),
        gh<_i644.GetAllLocalWeathers>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i465.AppModule {}
