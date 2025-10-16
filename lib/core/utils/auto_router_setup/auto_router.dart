import 'package:auto_route/auto_route.dart';
import 'package:clean_architecture/features/weather_detail/domain/entites/weather_info_entity.dart';
import 'package:clean_architecture/features/weather_detail/presentation/add_new_city/view/add_new_city_view.dart';
import 'package:clean_architecture/features/weather_detail/presentation/weather_details/view/weather_details.dart';
import 'package:flutter/material.dart';

part 'auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: WeatherDetailsRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: AddNewCityRoute.page,
        ),
      ];
}
