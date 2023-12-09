import 'package:weather_api/src/feature/domain/models/current_weather_entity/current_weather_entity.dart';

sealed class CurrentState {}

final class CurrentInitialState extends CurrentState {}

final class CurrentLoadingState extends CurrentState {}

final class CurrentLoadedState extends CurrentState {
  final CurrentWeatherEntity currentLoaded;

  CurrentLoadedState({required this.currentLoaded});
}

final class CurrentErrorState extends CurrentState {
  final String errorMessage;

  CurrentErrorState({required this.errorMessage});
}
