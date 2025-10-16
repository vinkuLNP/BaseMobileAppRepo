
import 'package:clean_architecture/features/weather_detail/domain/entites/clouds_entity.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/main_weather_info_entity.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/sunset_sunrise_entity.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/weather_description_entity.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/weather_theme_entity.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/wind_info_entity.dart';
import 'package:equatable/equatable.dart';

class WeatherInfoEntity extends Equatable {
  const WeatherInfoEntity({
    this.weather,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.weatherTheme,
  });
  final List<WeatherDescriptionEntity?>? weather;
  final MainWeatherInfoEntity? main;
  final String? visibility;
  final WindInfoEntity? wind;
  final CloudsEntity? clouds;
  final String? dt;
  final SunsetSunriseEntity? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final WeatherThemeEntity? weatherTheme;

  @override
  List<Object?> get props => <Object?>[
        weather,
        main,
        visibility,
        wind,
        clouds,
        dt,
        sys,
        timezone,
        id,
        name,
        weatherTheme,
      ];
}
