
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Pretendard',
                  ),
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

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                  ),
                  onPressed: () {
                    context.go('/workout_home');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Center(
                      child: const Text(
                        '시작하기',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}