import 'package:clean_architecture/core/utils/mapper/data_mapper.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/clouds_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clouds_response_model.g.dart';

@JsonSerializable()
class CloudsResponseModel extends DataMapper<CloudsEntity> {
  CloudsResponseModel({
    this.all,
  });

  factory CloudsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CloudsResponseModelFromJson(json);

  final int? all;

  @override
  CloudsEntity mapToEntity() {
    return CloudsEntity(
      all: all ?? 0,
    );
  }
}
