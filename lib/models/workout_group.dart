import 'package:workout_tracker_2026/models/workout.dart';

class WorkoutGroup{
  String groupDescription;
  List<Workout> workouts;
  WorkoutGroup({required this.workouts, required this.groupDescription});
}

