import 'package:clean_architecture/core/utils/mapper/data_mapper.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/wind_info_entity.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class WindInfoLocalEntity extends DataMapper<WindInfoEntity> {
  WindInfoLocalEntity({
    this.speed,
    this.deg,
    this.id,
  });

  int? id;
  String? speed;
  int? deg;

  @override
  WindInfoEntity mapToEntity() {
    return WindInfoEntity(
      deg: deg,
      speed: speed,
    );
  }
}
