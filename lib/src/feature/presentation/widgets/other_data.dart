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
                '11:25 AM',
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
                '4',
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
