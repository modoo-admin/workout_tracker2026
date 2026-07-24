import 'package:flutter/material.dart';

import 'workout_list_page.dart';

void main() {
  runApp(MyApp());
}

//git save check
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WorkoutListPage());
  }
}



