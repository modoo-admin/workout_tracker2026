
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('WorkoutList'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            spacing: 20,
            children: [
              //Image.asset('assets/squat.png'),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/squat.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: Text(
                  '1.스쿼트', style: TextStyle(fontSize:20),
                ),
              ),
              Text(
                '5:30', style: TextStyle(fontSize:20, color:Colors.blue),
              ),
            ],
          ),
          Row(
            spacing:20,
            children: [
              //Image.asset('assets/squat.png'),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/mountain_climber.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: Text(
                  '2.마운틴클림버', style: TextStyle(fontSize:20),
                ),
              ),
              Text(
                '20:30', style: TextStyle(fontSize:20, color:Colors.blue),
              ),
            ],
          ),
          Row(
            spacing:20,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/push_up.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: Text(
                  '3.푸쉬업', style: TextStyle(fontSize:20),
                ),
              ),
              Text(
                '12', style: TextStyle(fontSize:20, color:Colors.blue),
              ),
            ],
          ),
        ],
      ),
    );
  }
}