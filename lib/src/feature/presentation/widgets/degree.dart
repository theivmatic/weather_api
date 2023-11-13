import 'package:flutter/material.dart';

class DegreeWidget extends StatelessWidget {
  const DegreeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '31',
          style: TextStyle(
            color: Color.fromARGB(255, 44, 44, 44),
            fontSize: 70,
            fontWeight: FontWeight.w500,
          ),
        ),
        ImageIcon(
          AssetImage('assets/images/degree_icon.png'),
          color: Color.fromARGB(255, 44, 44, 44),
          size: 8,
        ),
      ],
    );
  }
}
