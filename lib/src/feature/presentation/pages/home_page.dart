import 'package:flutter/material.dart';
import 'package:weather_api/src/feature/presentation/widgets/location_name.dart';
import 'package:weather_api/src/feature/presentation/widgets/other_data.dart';
import 'package:weather_api/src/feature/presentation/widgets/search_bar.dart';
import 'package:weather_api/src/feature/presentation/widgets/weather_picture.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Column(
          children: [
            CustomSearchBar(),
            SizedBox(height: 80),
            WeatherPictureWidget(),
            SizedBox(height: 32),
            LocationNameWidget(),
            SizedBox(height: 35),
            OtherDataWidget(),
          ],
        ),
      ),
    );
  }
}

