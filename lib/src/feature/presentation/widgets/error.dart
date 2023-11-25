import 'package:flutter/material.dart';

class ErrorBodyWidget extends StatelessWidget {
  final void Function()? refresh;
  final String? errorTitle;

  const ErrorBodyWidget({super.key, this.refresh, required this.errorTitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: MediaQuery.sizeOf(context).width * 0.15,
            color: const Color.fromARGB(255, 196, 196, 196),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Something went wrong. Please try again.\n$errorTitle',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Color.fromARGB(255, 196, 196, 196)),
            ),
          ),
          ElevatedButton(
            onPressed: refresh,
            child: const Icon(
              Icons.refresh,
              color: Color.fromARGB(255, 196, 196, 196),
            ),
          )
        ],
      ),
    );
  }
}
