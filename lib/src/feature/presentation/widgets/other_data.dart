import 'package:flutter/material.dart';

class OtherDataWidget extends StatelessWidget {
  const OtherDataWidget({
    super.key,
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
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'TIME',
                style: TextStyle(
                  color: Color.fromARGB(255, 196, 196, 196),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '11:25 AM',
                style: TextStyle(
                    color: Color.fromARGB(255, 154, 154, 154),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'UV',
                style: TextStyle(
                  color: Color.fromARGB(255, 196, 196, 196),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '4',
                style: TextStyle(
                    color: Color.fromARGB(255, 154, 154, 154),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '% RAIN',
                style: TextStyle(
                  color: Color.fromARGB(255, 196, 196, 196),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '58%',
                style: TextStyle(
                    color: Color.fromARGB(255, 154, 154, 154),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'AQ',
                style: TextStyle(
                  color: Color.fromARGB(255, 196, 196, 196),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '22',
                style: TextStyle(
                    color: Color.fromARGB(255, 154, 154, 154),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
