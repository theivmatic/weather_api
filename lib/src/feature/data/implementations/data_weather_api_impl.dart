import 'package:weather_api/src/core/constants/uri.dart';
import 'package:http/http.dart' as http;
import 'package:weather_api/src/feature/domain/interfaces/data_weather_api.dart';
import 'package:weather_api/src/feature/domain/models/city_weather_entity/city_weather_entity.dart';

class DataWeatherApiImpl implements IDataWeatherApi {
  final http.Client? _client;

  DataWeatherApiImpl({http.Client? client}) : _client = client ?? http.Client();

  @override
  Future<CityWeatherEntity> fetchWeatherOnLocation(
      {required String location}) async {
    final response = await _client!.get(
      Uri.parse(
          "${AppUri.domain}${AppUri.current}${AppUri.apiKey}&q=$location"),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return cityWeatherEntityDataFromString(response.body);
    } else {
      throw Exception(
          'Status Code: ${response.statusCode}, Message: ${response.reasonPhrase}');
    }
  }
}
