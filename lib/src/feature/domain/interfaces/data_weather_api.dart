import 'package:weather_api/src/feature/domain/models/current_weather_entity/current_weather_entity.dart';

abstract class IDataWeatherApi {
  Future<CurrentWeatherEntity> fetchWeatherOnLocation({required String location});
}