// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'city_weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityWeatherEntity _$CityWeatherEntityFromJson(Map<String, dynamic> json) =>
    CityWeatherEntity(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityWeatherEntityToJson(CityWeatherEntity instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
      text: json['text'] as String?,
      icon: json['icon'] as String?,
      code: json['code'] as int?,
    );

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      lastUpdatedEpoch: json['lastUpdatedEpoch'] as int?,
      lastUpdated: json['lastUpdated'] as String?,
      tempC: json['tempC'] as int?,
      tempF: (json['tempF'] as num?)?.toDouble(),
      isDay: json['isDay'] as int?,
      condition: json['condition'] == null
          ? null
          : Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windMph: (json['windMph'] as num?)?.toDouble(),
      windKph: (json['windKph'] as num?)?.toDouble(),
      windDegree: json['windDegree'] as int?,
      windDir: json['windDir'] as String?,
      pressureMb: json['pressureMb'] as int?,
      pressureIn: (json['pressureIn'] as num?)?.toDouble(),
      precipMm: json['precipMm'] as int?,
      precipIn: json['precipIn'] as int?,
      humidity: json['humidity'] as int?,
      cloud: json['cloud'] as int?,
      feelslikeC: json['feelslikeC'] as int?,
      feelslikeF: (json['feelslikeF'] as num?)?.toDouble(),
      visKm: json['visKm'] as int?,
      visMiles: json['visMiles'] as int?,
      uv: json['uv'] as int?,
      gustMph: (json['gustMph'] as num?)?.toDouble(),
      gustKph: (json['gustKph'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'lastUpdatedEpoch': instance.lastUpdatedEpoch,
      'lastUpdated': instance.lastUpdated,
      'tempC': instance.tempC,
      'tempF': instance.tempF,
      'isDay': instance.isDay,
      'condition': instance.condition,
      'windMph': instance.windMph,
      'windKph': instance.windKph,
      'windDegree': instance.windDegree,
      'windDir': instance.windDir,
      'pressureMb': instance.pressureMb,
      'pressureIn': instance.pressureIn,
      'precipMm': instance.precipMm,
      'precipIn': instance.precipIn,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslikeC': instance.feelslikeC,
      'feelslikeF': instance.feelslikeF,
      'visKm': instance.visKm,
      'visMiles': instance.visMiles,
      'uv': instance.uv,
      'gustMph': instance.gustMph,
      'gustKph': instance.gustKph,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      name: json['name'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      tzId: json['tzId'] as String?,
      localtimeEpoch: json['localtimeEpoch'] as int?,
      localtime: json['localtime'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tzId': instance.tzId,
      'localtimeEpoch': instance.localtimeEpoch,
      'localtime': instance.localtime,
    };
