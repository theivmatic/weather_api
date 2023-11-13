import 'package:flutter/material.dart';

class SunriseAndSunsetWidget extends StatelessWidget {
  const SunriseAndSunsetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 229,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 253, 252, 252),
        borderRadius: BorderRadius.circular(11),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SUNRISE & SUNSET',
            style: TextStyle(
              color: Color.fromARGB(255, 196, 196, 196),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 37),
          Padding(
            padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Sunrise',
                      style: TextStyle(
                        color: Color.fromARGB(255, 196, 196, 196),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '06:25 AM',
                      style: TextStyle(
                        color: Color.fromARGB(255, 154, 154, 154),
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
                      style: TextStyle(
                        color: Color.fromARGB(255, 196, 196, 196),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '08:30 PM',
                      style: TextStyle(
                        color: Color.fromARGB(255, 154, 154, 154),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 104),
          Row(
            children: [
              Text(
                'Length of a day:',
                style: TextStyle(
                  color: Color.fromARGB(255, 154, 154, 154),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '13H 12M',
                style: TextStyle(
                  color: Color.fromARGB(255, 44, 44, 44),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Remaining daylight:',
                style: TextStyle(
                  color: Color.fromARGB(255, 154, 154, 154),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '9H 22M',
                style: TextStyle(
                  color: Color.fromARGB(255, 44, 44, 44),
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
