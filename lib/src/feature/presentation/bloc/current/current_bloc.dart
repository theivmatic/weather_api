import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/src/feature/data/implementations/data_weather_api_impl.dart';
import 'package:weather_api/src/feature/presentation/bloc/current/current_event.dart';
import 'package:weather_api/src/feature/presentation/bloc/current/current_state.dart';

class CurrentBloc extends Bloc<CurrentEvent, CurrentState> {
  CurrentBloc() : super(CurrentInitialState()) {
    on<FetchCurrentEvent>((event, emit) async {
      try {
        final currentLoaded = await DataWeatherApiImpl()
            .fetchWeatherOnLocation(location: event.location);
        emit(CurrentLoadedState(currentLoaded: currentLoaded));
      } catch (e) {
        emit(CurrentErrorState(errorMessage: e.toString()));
      }
    });
  }
}
