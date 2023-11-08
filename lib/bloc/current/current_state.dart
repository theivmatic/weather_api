import 'package:weather_api/models/city_weather_entity/city_weather_entity.dart';

sealed class CurrentState {}

final class CurrentInitialState extends CurrentState {}

final class CurrentLoadingState extends CurrentState {}

final class CurrentLoadedState extends CurrentState {
  final CityWeatherEntity currentLoaded;

  CurrentLoadedState({required this.currentLoaded});
}

final class CurrentErrorState extends CurrentState {
  final String errorMessage;

  CurrentErrorState({required this.errorMessage});
}
