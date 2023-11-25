import 'package:flutter/material.dart';

class WeatherPictureWidget extends StatelessWidget {
  final String? imageUrl;

  const WeatherPictureWidget({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
        child: Image.network(
      'https:$imageUrl',
      scale: 0.5,
    ));
  }
}
