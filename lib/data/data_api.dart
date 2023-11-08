import 'package:weather_api/models/city_weather_entity/city_weather_entity.dart';

abstract class IDataApi {
  Future<CityWeatherEntity> fetchWeatherOnLocation({required String location});
}