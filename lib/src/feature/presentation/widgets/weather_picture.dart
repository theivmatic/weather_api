import 'package:flutter/material.dart';

class WeatherPictureWidget extends StatelessWidget {
  const WeatherPictureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 123,
      height: 113,
      decoration: const BoxDecoration(color: Colors.amber),
    );
  }
}