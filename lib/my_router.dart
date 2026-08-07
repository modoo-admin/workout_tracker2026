import 'package:go_router/go_router.dart';
import 'package:workout_tracker_2026/landing_page.dart';
import 'package:workout_tracker_2026/workout_guide_page.dart';
import 'package:workout_tracker_2026/workout_home_page.dart';
import 'package:workout_tracker_2026/workout_list_page.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LandingPage(),
    ),
    GoRoute(
      path: '/workout_home',
      builder: (context, state) => WorkoutHomePage(),
      routes:[
        GoRoute(
          path: 'workout_list',
          builder: (context, state) => WorkoutListPage(),
          routes: [
            GoRoute(
              path: 'workout_guide',
              builder: (context, state) => WorkoutGuidePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
