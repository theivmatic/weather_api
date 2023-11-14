import 'package:flutter/material.dart';

class SunriseAndSunsetWidget extends StatelessWidget {
  const SunriseAndSunsetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
      width: 327,
      height: 229,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 253, 252, 252),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('SUNRISE & SUNSET',
              style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 37),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Sunrise',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Text(
                      '06:25 AM',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Sunset',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '08:30 PM',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          Row(
            children: [
              Text(
                'Length of a day:',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
              ),
               Text(
                '13H 12M',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Remaining daylight:',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                '9H 22M',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
