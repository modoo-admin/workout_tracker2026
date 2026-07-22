import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LandingPage());
  }
}

/// 운동 트래커의 홈 화면입니다.
class WorkoutHome extends StatelessWidget {
  const WorkoutHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.black,
                child: Text(
                  'My perfect workout mate',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Image(
                image: AssetImage('assets/runner.png'),
              ),
              Text(
                'Workout \nTracker',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black45,
                ),
                child: Text(
                  '시작하기',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
