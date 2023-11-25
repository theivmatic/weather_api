import 'package:flutter/material.dart';

class DegreeWidget extends StatelessWidget {
  final String? degree;

  const DegreeWidget({
    super.key,
    required this.degree,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        degree != null
            ? Text(degree!, style: Theme.of(context).textTheme.displayLarge)
            : const Icon(Icons.autorenew),
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
