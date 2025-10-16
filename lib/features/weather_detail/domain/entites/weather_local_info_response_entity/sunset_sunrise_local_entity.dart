import 'package:clean_architecture/core/utils/mapper/data_mapper.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/sunset_sunrise_entity.dart';
import 'package:objectbox/objectbox.dart';


@Entity()
class SunsetSunriseLocalEntity extends DataMapper<SunsetSunriseEntity> {
  SunsetSunriseLocalEntity({
    this.type,
    this.id,
    this.country,
    this.sunrise,
    this.sunset,
  });

  int? type;
  int? id;
  String? country;
  String? sunrise;
  String? sunset;

  @override
  SunsetSunriseEntity mapToEntity() {
    return SunsetSunriseEntity(
      sunset: sunset,
      country: country,
      type: type,
      sunrise: sunrise,
      id: id,
    );
  }
}
