import 'package:weather_api/core/constance/uri.dart';
import 'package:weather_api/data/data_api.dart';
import 'package:http/http.dart' as http;
import 'package:weather_api/models/city_weather_entity/city_weather_entity.dart';

class DataApiImpl implements IDataApi {
  final http.Client? _client;

  DataApiImpl({http.Client? client}) : _client = client ?? http.Client();

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
      return cityWeatherEntityFromJson(response.bodyBytes);
    } else {
      throw Exception(
          'Status Code: ${response.statusCode}, Message: ${response.reasonPhrase}');
    }
  }
}
