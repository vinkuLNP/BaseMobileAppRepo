import 'package:clean_architecture/core/commondomain/entities/based_api_result/api_result_model.dart';
import 'package:clean_architecture/core/commondomain/usecases/base_params_usecase.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/weather_info_entity.dart';
import 'package:clean_architecture/features/weather_detail/domain/repositories/weather_repository.dart';
import 'package:clean_architecture/features/weather_detail/utils/requests_models/weather_by_coordinates_request_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetWeatherDataByCoordinates
    implements
        BaseParamsUseCase<WeatherInfoEntity?,
            WeatherByCoordinatesRequestModel> {
  GetWeatherDataByCoordinates(this.weatherRepository);

  final WeatherRepository weatherRepository;

  @override
  Future<ApiResultModel<WeatherInfoEntity?>> call(
      WeatherByCoordinatesRequestModel? weatherByCoordinatesRequestModel) {
    return weatherRepository.getWeatherDataByCoordinates(
        weatherByCoordinatesRequestModel: weatherByCoordinatesRequestModel);
  }
}
