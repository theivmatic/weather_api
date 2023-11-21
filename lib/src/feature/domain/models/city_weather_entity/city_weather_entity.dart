import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'city_weather_entity.g.dart';

CityWeatherEntity cityWeatherEntityDataFromString(String jsonString) {
  Map<String, dynamic> jsonMap = json.decode(jsonString);
  return CityWeatherEntity.fromJson(jsonMap);
}

@JsonSerializable()
class CityWeatherEntity {
  @JsonKey(name: 'location')
  Location? location;
  @JsonKey(name: 'current')
  Current? current;

  CityWeatherEntity({this.location, this.current});

  factory CityWeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$CityWeatherEntityFromJson(json);
}

@JsonSerializable()
class Condition {
  String? text;
  String? icon;
  int? code;

  Condition({this.text, this.icon, this.code});

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}

@JsonSerializable()
class Current {
  @JsonKey(name: 'last_updated_epoch')
  int? lastUpdatedEpoch;
  @JsonKey(name: 'last_updated')
  String? lastUpdated;
  @JsonKey(name: 'temp_c')
  int? tempC;
  @JsonKey(name: 'temp_f')
  double? tempF;
  @JsonKey(name: 'is_day')
  int? isDay;
  @JsonKey(name: 'condition')
  Condition? condition;
  @JsonKey(name: 'wind_mph')
  double? windMph;
  @JsonKey(name: 'wind_kph')
  double? windKph;
  @JsonKey(name: 'wind_degree')
  int? windDegree;
  @JsonKey(name: 'wind_dir')
  String? windDir;
  @JsonKey(name: 'pressure_mb')
  int? pressureMb;
  @JsonKey(name: 'pressure_in')
  double? pressureIn;
  @JsonKey(name: 'precip_mm')
  int? precipMm;
  @JsonKey(name: 'precip_in')
  int? precipIn;
  @JsonKey(name: 'humidity')
  int? humidity;
  @JsonKey(name: 'cloud')
  int? cloud;
  @JsonKey(name: 'feelslike_c')
  int? feelslikeC;
  @JsonKey(name: 'feelslike_f')
  double? feelslikeF;
  @JsonKey(name: 'vis_km')
  int? visKm;
  @JsonKey(name: 'vis_miles')
  int? visMiles;
  @JsonKey(name: 'uv')
  int? uv;
  @JsonKey(name: 'gust_mph')
  double? gustMph;
  @JsonKey(name: 'gust_kph')
  double? gustKph;

  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@JsonSerializable()
class Location {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'region')
  String? region;
  @JsonKey(name: 'country')
  String? country;
  @JsonKey(name: 'lat')
  double? lat;
  @JsonKey(name: 'lon')
  double? lon;
  @JsonKey(name: 'tz_id')
  String? tzId;
  @JsonKey(name: 'localtime_epoch')
  int? localtimeEpoch;
  @JsonKey(name: 'localtime')
  String? localtime;

  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
