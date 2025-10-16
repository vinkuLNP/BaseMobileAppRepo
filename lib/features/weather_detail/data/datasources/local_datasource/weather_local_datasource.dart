
import 'package:clean_architecture/features/weather_detail/data/models/weather_info_remote_response_model/weather_info_response_model.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/weather_info_entity.dart';

abstract class WeatherLocalDataSource {
  Future<WeatherInfoEntity?> getLastWeatherInfo();

  Future<List<WeatherInfoEntity?>?> getAllLocalWeathers();

  void cacheWeatherInfo(WeatherInfoResponseModel? weatherInfoResponseModel);
}
