import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logic/my_workout_provider.dart';
import '../models/my_workout.dart';
import '../widgets/workout_tile.dart';
import 'add_workout_dialog.dart';

class MyWorkoutListPage extends StatefulWidget {
  MyWorkoutListPage({super.key});

  @override
  State<MyWorkoutListPage> createState() => _MyWorkoutListPageState();
}

class _MyWorkoutListPageState extends State<MyWorkoutListPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<MyWorkoutProvider>(context,listen:false).fetchAllMyWorkouts();
  }
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('MyWorkoutList'),
      ),
      body: Consumer<MyWorkoutProvider>(
        builder: (context, myWorkoutProvider, child) {
          List<MyWorkout> workouts = myWorkoutProvider.workouts;
          if(workouts.isEmpty){
            return Center(
              child: Text('등록된 운동이 없습니다.'),
            );
          }
          return ListView.builder(
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
                key:ObjectKey(workout),
                index: index - 1,
                name: workout.name,
                image: workout.imageURL,
                minutes: workout.minutes,
              );
            },
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
           context:context,
           builder:(context){
             return Dialog(
               child: AddWorkoutDialog(),
             );
           }
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
