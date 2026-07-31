import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'workout.dart';

class WorkoutGuidePage extends StatefulWidget {
  const WorkoutGuidePage({super.key});

  @override
  State<WorkoutGuidePage> createState() => _WorkoutGuidePageState();
}

class _WorkoutGuidePageState extends State<WorkoutGuidePage> {
  final player = AudioPlayer();
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
  late Workout currentWorkout;
  int workoutIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentWorkout= workouts[workoutIndex];
  }
  void prevWorkout(){
    workoutIndex--;
    if(workoutIndex < 0){
      workoutIndex=workouts.length-1;
    }
    currentWorkout=workouts[workoutIndex];
  }
  void nextWorkout(){
    workoutIndex++;

    if(workoutIndex >= workouts.length){
      workoutIndex=0;
    }
    currentWorkout=workouts[workoutIndex];
  }
  @override
  Widget build(BuildContext context) {
    var textTheme=Theme.of(context).textTheme;
    var colorScheme=Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Guide'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Spacer(),
              Text(
                '${currentWorkout.name}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationThickness: 3.0,
                ),
              ),
              SizedBox(width: 20),
              Text(
                '산을 오르는 자세를 닮아 붙은 \n이름으로 단시간 안에 체지방을 \n많이 태워 복부 비만에 제격입니다.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {

                  setState(() {
                    prevWorkout();
                  });

                },
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 70,
              ),
              Expanded(child: Image.asset('assets/${currentWorkout.imageName}')),
              IconButton(
                onPressed: () {
                  setState(() {
                    nextWorkout();
                  });
                },
                icon: Icon(Icons.arrow_forward_ios),
                iconSize: 70,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 160,
                height: 100,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '운동 부위',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '배, 상체 근육',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color:Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 160,
                height: 100,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '이런 사람에게 강추!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '뱃살이 고민이에요 \n체지방 태우고싶어요.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color:Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      '${currentWorkout.minutes}분',
                      style: textTheme.headlineLarge?.copyWith(
                        color: colorScheme.secondaryFixedDim,
                        fontWeight: FontWeight.w500,
                      ),
                      // style: TextStyle(
                      //   fontSize: 35,
                      //   fontWeight: FontWeight.w500,
                      //   color:Theme.of(context).colorScheme.secondaryFixedDim
                      // ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          getIconButton(),
        ],
      ),
    );
  }

  IconButton getIconButton() {

    if(player.state == PlayerState.playing){
      return IconButton(
        onPressed: () async{
          await player.stop();
          setState(() {

          });
        },
        icon: Icon(Icons.stop_circle),
        iconSize: 70,

      );
    }else{
      return IconButton(
        onPressed: () async{
          await player.play(AssetSource('${currentWorkout.audioName}'));
          setState(() {

          });
        },
        icon: Icon(Icons.play_circle),
        iconSize: 70,
        color: Theme.of(context).colorScheme.primary,
      );
    }

  }
}
