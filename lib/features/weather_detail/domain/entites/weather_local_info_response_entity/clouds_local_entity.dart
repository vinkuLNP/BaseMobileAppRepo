
import 'package:clean_architecture/core/utils/mapper/data_mapper.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/clouds_entity.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class CloudsLocalEntity extends DataMapper<CloudsEntity> {
  CloudsLocalEntity({
    this.all,
    this.id,
  });

  int? all;
  int? id;

  @override
  CloudsEntity mapToEntity() {
    return CloudsEntity(
      all: all,
    );
  }
}
