import 'package:clean_architecture/features/weather_detail/data/datasources/local_datasource/local_database.dart';
import 'package:injectable/injectable.dart';


@module
abstract class AppModule {
  @preResolve
  Future<AppLocalDatabase> get prefs => AppLocalDatabase.create();
}
