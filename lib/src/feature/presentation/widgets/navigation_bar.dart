import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: const NavigationBarThemeData(
        indicatorColor: Colors.amber,
        backgroundColor: Color.fromARGB(255, 253, 252, 252),
      ),
      child: NavigationBar(destinations: const [
        NavigationDestination(
          icon: Icon(Icons.calendar_today),
          label: 'Today',
        ),
        NavigationDestination(
          icon: Icon(Icons.calendar_view_week),
          label: 'Week',
        ),
        NavigationDestination(
          icon: Icon(Icons.calendar_month),
          label: 'Month',
        ),
      ]),
    );
  }
}
