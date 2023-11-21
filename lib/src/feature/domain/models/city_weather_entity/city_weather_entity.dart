import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'city_weather_entity.g.dart';

CityWeatherEntity cityWeatherEntityFromJson(List<int> body) =>
    CityWeatherEntity.fromJson(json.decode(utf8.decode(body)));

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
  @JsonKey(name: 'current')
  double? tempF;
  @JsonKey(name: 'current')
  int? isDay;
  @JsonKey(name: 'current')
  Condition? condition;
  @JsonKey(name: 'current')
  double? windMph;
  @JsonKey(name: 'current')
  double? windKph;
  @JsonKey(name: 'current')
  int? windDegree;
  @JsonKey(name: 'current')
  String? windDir;
  @JsonKey(name: 'current')
  int? pressureMb;
  @JsonKey(name: 'current')
  double? pressureIn;
  @JsonKey(name: 'current')
  int? precipMm;
  @JsonKey(name: 'current')
  int? precipIn;
  @JsonKey(name: 'current')
  int? humidity;
  @JsonKey(name: 'current')
  int? cloud;
  @JsonKey(name: 'current')
  int? feelslikeC;
  @JsonKey(name: 'current')
  double? feelslikeF;
  @JsonKey(name: 'current')
  int? visKm;
  @JsonKey(name: 'current')
  int? visMiles;
  @JsonKey(name: 'current')
  int? uv;
  @JsonKey(name: 'current')
  double? gustMph;
  @JsonKey(name: 'current')
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
  @JsonKey(name: 'current')
  String? name;
  @JsonKey(name: 'current')
  String? region;
  @JsonKey(name: 'current')
  String? country;
  @JsonKey(name: 'current')
  double? lat;
  @JsonKey(name: 'current')
  double? lon;
  @JsonKey(name: 'current')
  String? tzId;
  @JsonKey(name: 'current')
  int? localtimeEpoch;
  @JsonKey(name: 'current')
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
