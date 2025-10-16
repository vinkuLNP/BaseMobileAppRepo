import 'package:clean_architecture/core/utils/mapper/data_mapper.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/coordinate_entity.dart';
import 'package:objectbox/objectbox.dart';


@Entity()
class CoordinateLocalEntity extends DataMapper<CoordinateEntity> {
  CoordinateLocalEntity({
    this.lon,
    this.lat,
    this.id,
  });

  int? id;
  double? lon;
  double? lat;

  @override
  CoordinateEntity mapToEntity() {
    return CoordinateEntity(
      lat: lat,
      lon: lon,
    );
  }
}
