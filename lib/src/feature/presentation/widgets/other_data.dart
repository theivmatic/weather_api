import 'package:flutter/material.dart';
import 'package:weather_api/src/core/utils/date_format.dart';

class OtherDataWidget extends StatelessWidget {
  final DateTime? localTime;
  final double? uv;

  const OtherDataWidget({
    super.key, required this.localTime, required this.uv,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 59,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 253, 252, 252),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'TIME',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                localTime.toHour,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'UV',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                '${uv?.round()}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '% RAIN',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                '58%',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'AQ',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                '22',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
