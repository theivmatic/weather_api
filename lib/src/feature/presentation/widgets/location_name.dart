import 'package:flutter/material.dart';

class LocationNameWidget extends StatelessWidget {
  const LocationNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Moscow',
          style: TextStyle(
            color: Color.fromARGB(255, 42, 42, 42),
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 13),
        ImageIcon(
          AssetImage('assets/images/location_icon.png'),
        ),
      ],
    );
  }
}