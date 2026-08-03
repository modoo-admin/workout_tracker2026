import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:workout_tracker_2026/workout_home_page.dart';

import 'workout_guide_page.dart';
import 'workout_list_page.dart';

void main() {
  runApp(MyApp());
}

//git save check
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WorkoutHomePage(),
      //home: WorkoutGuidePage(),
      //home: WorkoutListPage(),
      theme: FlexThemeData.light(scheme: FlexScheme.redWine),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.redWine),
      themeMode: ThemeMode.system,
    );
  }
}
