import 'package:clean_architecture/core/utils/mapper/data_mapper.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/weather_theme_entity.dart';
import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';



@Entity()
class WeatherThemeLocalEntity extends DataMapper<WeatherThemeEntity> {

  WeatherThemeLocalEntity({
    this.firstColorHex,
    this.secondColorHex,
    this.id,
  });
  int? firstColorHex;
  int? secondColorHex;
  int? id;

  @override
  WeatherThemeEntity mapToEntity() {
    return WeatherThemeEntity(
      secondColor: Color(secondColorHex ?? 0),
      firstColor: Color(firstColorHex ?? 0),
    );
  }
}
