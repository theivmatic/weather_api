import 'package:weather_api/src/feature/domain/models/city_weather_entity/city_weather_entity.dart';

abstract class IDataWeatherApi {
  Future<CityWeatherEntity> fetchWeatherOnLocation({required String location});
}