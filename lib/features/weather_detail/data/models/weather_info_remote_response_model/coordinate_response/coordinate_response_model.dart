import 'package:clean_architecture/core/utils/mapper/data_mapper.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/coordinate_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'coordinate_response_model.g.dart';

@JsonSerializable()
class CoordinateResponseModel extends DataMapper<CoordinateEntity> {
  CoordinateResponseModel({
    this.lon,
    this.lat,
  });

  factory CoordinateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinateResponseModelFromJson(json);

  final double? lon;
  final double? lat;

  @override
  CoordinateEntity mapToEntity() {
    return CoordinateEntity(
      lat: lat ?? 0.0,
      lon: lon ?? 0.0,
    );
  }
}
