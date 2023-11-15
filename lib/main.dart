import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/src/feature/presentation/bloc/observer.dart';
import 'package:weather_api/src/feature/presentation/pages/home_page.dart';

void main() {
  Bloc.observer = AppObserver();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color.fromARGB(255, 44, 44, 44),
            fontSize: 70,
            fontWeight: FontWeight.w500,
          ),
          headlineLarge: TextStyle(
            color: Color.fromARGB(255, 42, 42, 42),
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: TextStyle(
            color: Color.fromARGB(255, 196, 196, 196),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          bodySmall: TextStyle(
            color: Color.fromARGB(255, 154, 154, 154),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            color: Color.fromARGB(255, 218, 218, 218),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
