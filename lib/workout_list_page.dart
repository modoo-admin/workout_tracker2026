
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'workout.dart';

class WorkoutListPage extends StatelessWidget {
  WorkoutListPage({super.key});

  List<Workout> workouts=[
    Workout(name: '스쿼트',imageName: 'squat.png', minutes: 30, audioName: 'squat.mp3', kcal: 200),
    Workout(name: '윗몸 일으키기', minutes: 20, imageName: 'sit_up.png', audioName: 'sit_up.mp3', kcal: 100),
    Workout(name: '마운틴 클림버', minutes: 15, imageName: 'mountain_climber.png', audioName: 'mountain_climber.mp3', kcal: 50),
    Workout(name: '사이드 런지', minutes: 20, imageName: 'side_lunge.png', audioName: 'side_lunge.mp3', kcal: 100),
    Workout(name: '푸시업', minutes: 15, imageName: 'push_up.png', audioName: 'push_up.mp3', kcal: 100),
    Workout(name: '덩키 킥', minutes: 30, imageName: 'donkey_kick.png', audioName: 'donkey_kick.mp3', kcal: 50),
    Workout(name: '사이드 플랭크', minutes: 25, imageName: 'side_plank.png', audioName: 'side_plank.mp3', kcal: 120),
    Workout(name: '리버스 플랭크', minutes: 25, imageName: 'reverse_plank.png', audioName: 'reverse_plank.mp3', kcal: 120),
    Workout(name: '힙 브릿지', minutes: 20, imageName: 'hip_bridge.png', audioName: 'hip_brdige.mp3', kcal: 80),
    Workout(name: '어깨 스트레칭', minutes: 10, imageName: 'shoulder_stretch.png', audioName: 'shoulder_stretch.mp3', kcal: 30),
    Workout(name: '햄스트링 스트레칭', minutes: 10, imageName: 'hamstring_stretch.png', audioName: 'hamstring_stretch.mp3', kcal: 30),

  ];

  List<Widget> getWorkoutList(BuildContext context) {
    List<Widget> result=[];
    for(int i=0;i< workouts.length; i++){
      var name=workouts[i].name;
      var minutes=workouts[i].minutes;
      var image=workouts[i].imageName;
      Widget sample=GestureDetector(
        onTap:(){
          context.go('/workout_home/workout_list/workout_guide');
        },
        child: Row(
          spacing: 20,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/$image'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: Text(
                '${i+1}.$name', style: TextStyle(fontSize:20),
              ),
            ),
            Text(
              '$minutes', style: TextStyle(fontSize:20, color:Colors.blue),
            ),
          ],
        ),
      );
      result.add(sample);
    }
    //###############################

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('WorkoutList'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:getWorkoutList(context),
        ),
      ),
    );
  }


}