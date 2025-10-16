import 'package:clean_architecture/core/commondomain/entities/based_api_result/api_result_model.dart';
import 'package:clean_architecture/core/commondomain/usecases/base_params_usecase.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/weather_info_entity.dart';
import 'package:clean_architecture/features/weather_detail/domain/repositories/weather_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllLocalWeathers
    implements BaseParamsUseCase<List<WeatherInfoEntity?>?, NoParams> {
  GetAllLocalWeathers(this.weatherRepository);

  final WeatherRepository weatherRepository;

  @override
  Future<ApiResultModel<List<WeatherInfoEntity?>?>> call(NoParams? params) {
    return weatherRepository.getAllLocalWeathers();

  }


}
