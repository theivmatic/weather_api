import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/bloc/current/current_event.dart';
import 'package:weather_api/bloc/current/current_state.dart';
import 'package:weather_api/data/data_api_impl.dart';

class CurrentBloc extends Bloc<CurrentEvent, CurrentState> {
  CurrentBloc() : super(CurrentInitialState()) {
    on<FetchCurrentEvent>((event, emit) async {
      try {
        final currentLoaded = await DataApiImpl()
            .fetchWeatherOnLocation(location: event.location);
        emit(CurrentLoadedState(currentLoaded: currentLoaded));
      } catch (e) {
        emit(CurrentErrorState(errorMessage: e.toString()));
      }
    });
  }
}
