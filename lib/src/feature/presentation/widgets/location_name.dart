import 'package:flutter/material.dart';

class LocationNameWidget extends StatelessWidget {
  final String? city;

  const LocationNameWidget({
    super.key, required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          city ?? 'City',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(width: 13),
        const ImageIcon(
          AssetImage('assets/images/location_icon.png'),
          size: 21,
        ),
      ],
    );
  }
}
