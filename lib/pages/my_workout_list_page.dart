import 'package:flutter/material.dart';

import '../models/my_workout.dart';
import '../widgets/workout_tile.dart';
import 'add_workout_dialog.dart';

class MyWorkoutListPage extends StatelessWidget {
  MyWorkoutListPage({super.key});
  final List<MyWorkout> workouts = [
    MyWorkout(
      name: '어깨 스트레칭',
      imageURL: 'https://firebasestorage.googleapis.com/v0/b/workouttracker-pre.firebasestorage.app/o/my_workouts%2Fshoulder_stretch.png?alt=media&token=05c3ca57-586e-4c32-8ff7-c2aa88503d4c',
      minutes: 10,
    ),
    MyWorkout(
      name: '전사 자세',
      imageURL: 'https://firebasestorage.googleapis.com/v0/b/workouttracker-pre.firebasestorage.app/o/my_workouts%2Fwarrior_pose.png?alt=media&token=c4ab3994-c66d-458c-a53d-fa3e02ee5671',
      minutes: 15,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('MyWorkoutList'),
      ),
      body: ListView.builder(
        itemCount: workouts.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const ListTile(
              contentPadding: EdgeInsets.only(left: 45, right: 20),
              leading: Text(
                '운동',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              trailing: Text(
                '세트 당 소요시간',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            );
          }
          final workout = workouts[index - 1];
          return WorkoutTile(
            index: index - 1,
            name: workout.name,
            image: workout.imageURL,
            minutes: workout.minutes,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
