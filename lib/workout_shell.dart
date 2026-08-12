import 'package:flutter/material.dart';

class WorkoutShell extends StatelessWidget {
  const WorkoutShell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home',),
          NavigationDestination(icon: Icon(Icons.settings_outlined), label: 'Settings',),
        ],
      ),
    );
  }
}
