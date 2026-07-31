
import 'package:flutter/material.dart';

import 'workout.dart';

class WorkoutListPage extends StatelessWidget {
  WorkoutListPage({super.key});
  List<String> workoutName=[
    '스쿼트',
    '마운틴 클림버',
    '푸시업',
    '윗몸 일으키기',
    '사이드 런지',
    '덩키 킥',
    '사이드 플랭크',
    '리버스 플랭크',
    '힙 브릿지',
    '어깨 스트레칭',
    '햄스트링 스트레칭'
  ];

  List<String> workoutImage = [
    'squat.png',
    'mountain_climber.png',
    'push_up.png',
    'sit_up.png',
    'side_lunge.png',
    'donkey_kick.png',
    'side_plank.png',
    'reverse_plank.png',
    'hip_bridge.png',
    'shoulder_stretch.png',
    'hamstring_stretch.png',
  ];

  List<int> workoutMinutes = [30, 20, 15, 15, 20, 30, 20, 15, 25, 15, 10];

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

  List<Row> getWorkoutList() {
    List<Row> result=[];
    for(int i=0;i< workoutName.length; i++){
      var name=workoutName[i];
      var minutes=workoutMinutes[i];
      var image=workoutImage[i];
      Row sample=Row(
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
      body: Column(
        children:getWorkoutList(),
      ),
    );
  }


}