import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/src/feature/presentation/bloc/current/current_bloc.dart';
import 'package:weather_api/src/feature/presentation/bloc/current/current_event.dart';
import 'package:weather_api/src/feature/presentation/bloc/current/current_state.dart';
import 'package:weather_api/src/feature/presentation/widgets/degree.dart';
import 'package:weather_api/src/feature/presentation/widgets/location_name.dart';
import 'package:weather_api/src/feature/presentation/widgets/other_data.dart';
import 'package:weather_api/src/feature/presentation/widgets/search_bar.dart';
import 'package:weather_api/src/feature/presentation/widgets/sunrise_and_sunset.dart';
import 'package:weather_api/src/feature/presentation/widgets/weather_picture.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CurrentBloc currentBloc;

  @override
  void initState() {
    currentBloc = context.read<CurrentBloc>()
      ..add(FetchCurrentEvent(location: 'Kishinev'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.normal,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: BlocBuilder<CurrentBloc, CurrentState>(
            bloc: currentBloc,
            builder: (context, state) => switch (state) {
              CurrentLoadedState() => Column(
                  children: [
                    const CustomSearchBar(),
                    const SizedBox(height: 80),
                    const WeatherPictureWidget(),
                    const SizedBox(height: 32),
                    LocationNameWidget(
                        city: state.currentLoaded.location?.name),
                    const SizedBox(height: 16),
                    DegreeWidget(
                      degree: state.currentLoaded.current?.tempC
                          ?.round()
                          .toString(),
                    ),
                    const SizedBox(height: 35),
                    const OtherDataWidget(),
                    const SizedBox(height: 26),
                    const SunriseAndSunsetWidget(),
                  ],
                ),
              CurrentErrorState(errorMessage: '') => const SizedBox(),
              CurrentLoadingState() => const SizedBox(),
              _ => const SizedBox(),
            },
          ),
        ),
      ),
    );
  }
}
