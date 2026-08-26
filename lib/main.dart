import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker_2026/pages/workout_home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'my_router.dart';
import 'pages/workout_guide_page.dart';
import 'pages/workout_list_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

//git save check
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[

      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: FlexThemeData.light(scheme: FlexScheme.redWine),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.redWine),
        themeMode: ThemeMode.system,
      ),
    );
    // return MaterialApp(
    //   home: WorkoutHomePage(),
    //   //home: WorkoutGuidePage(),
    //   //home: WorkoutListPage(),
    //   theme: FlexThemeData.light(scheme: FlexScheme.redWine),
    //   darkTheme: FlexThemeData.dark(scheme: FlexScheme.redWine),
    //   themeMode: ThemeMode.system,
    // );
  }
}
