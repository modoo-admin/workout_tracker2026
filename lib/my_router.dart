import 'package:go_router/go_router.dart';
import 'package:workout_tracker_2026/landing_page.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LandingPage(),
    ),
  ],
);
