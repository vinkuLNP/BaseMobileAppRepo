import 'package:clean_architecture/core/utils/mapper/data_mapper.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/main_weather_info_entity.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class MainWeatherInfoLocalEntity extends DataMapper<MainWeatherInfoEntity> {
  MainWeatherInfoLocalEntity({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.id,
  });

  int? id;
  String? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;

  @override
  MainWeatherInfoEntity mapToEntity() {
    return MainWeatherInfoEntity(
      tempMin: tempMin,
      tempMax: tempMax,
      pressure: pressure,
      humidity: humidity,
      feelsLike: feelsLike,
      temp: temp,
    );
  }
}
