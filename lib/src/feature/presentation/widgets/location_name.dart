import 'package:flutter/material.dart';

class LocationNameWidget extends StatelessWidget {
  const LocationNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Moscow',
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
