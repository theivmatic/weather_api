import 'package:flutter/material.dart';
import 'package:weather_api/src/core/utils/date_format.dart';

class OtherDataWidget extends StatelessWidget {
  final DateTime? localTime;
  final double? feelsLike;
  final double? windSpeed;
  final int? humidity;

  const OtherDataWidget({
    super.key,
    required this.localTime,
    required this.feelsLike,
    required this.windSpeed,
    required this.humidity,
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
                'FEELS LIKE',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                '${feelsLike?.round()}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'WIND SPEED',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                '${windSpeed?.round()} km/h',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'HUMIDITY',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                '$humidity',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
