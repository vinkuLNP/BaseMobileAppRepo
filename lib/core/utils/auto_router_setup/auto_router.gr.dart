// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_router.dart';

/// generated route for
/// [AddNewCityView]
class AddNewCityRoute extends PageRouteInfo<void> {
  const AddNewCityRoute({List<PageRouteInfo>? children})
    : super(AddNewCityRoute.name, initialChildren: children);

  static const String name = 'AddNewCityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddNewCityView();
    },
  );
}

/// generated route for
/// [WeatherDetailsView]
class WeatherDetailsRoute extends PageRouteInfo<WeatherDetailsRouteArgs> {
  WeatherDetailsRoute({
    Key? key,
    WeatherInfoEntity? weatherInfoEntity,
    List<PageRouteInfo>? children,
  }) : super(
         WeatherDetailsRoute.name,
         args: WeatherDetailsRouteArgs(
           key: key,
           weatherInfoEntity: weatherInfoEntity,
         ),
         initialChildren: children,
       );

  static const String name = 'WeatherDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WeatherDetailsRouteArgs>(
        orElse: () => const WeatherDetailsRouteArgs(),
      );
      return WeatherDetailsView(
        key: args.key,
        weatherInfoEntity: args.weatherInfoEntity,
      );
    },
  );
}

class WeatherDetailsRouteArgs {
  const WeatherDetailsRouteArgs({this.key, this.weatherInfoEntity});

  final Key? key;

  final WeatherInfoEntity? weatherInfoEntity;

  @override
  String toString() {
    return 'WeatherDetailsRouteArgs{key: $key, weatherInfoEntity: $weatherInfoEntity}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! WeatherDetailsRouteArgs) return false;
    return key == other.key && weatherInfoEntity == other.weatherInfoEntity;
  }

  @override
  int get hashCode => key.hashCode ^ weatherInfoEntity.hashCode;
}
