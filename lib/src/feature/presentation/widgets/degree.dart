import 'package:flutter/material.dart';

class DegreeWidget extends StatelessWidget {
  const DegreeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '31',
          style: Theme.of(context).textTheme.displayLarge
        ),
        Container(
          height: 58,
          alignment: Alignment.topCenter,
          child: const ImageIcon(
            AssetImage('assets/images/degree_icon.png'),
            color: Color.fromARGB(255, 44, 44, 44),
            size: 8,
          ),
        ),
      ],
    );
  }
}
