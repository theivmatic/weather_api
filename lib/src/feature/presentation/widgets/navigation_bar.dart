import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: const Color.fromARGB(255, 253, 252, 252),
      destinations: const [
      NavigationDestination(
          icon: Icon(Icons.home), label: 'Today'),
      NavigationDestination(
          icon: Icon(Icons.home), label: 'Week'),
      NavigationDestination(
        icon: Icon(Icons.home),
        label: 'Month',
      ),
      
    ]);
  }
}