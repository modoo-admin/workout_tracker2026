import 'package:flutter/material.dart';

class WorkoutHomePage extends StatefulWidget {
  const WorkoutHomePage({super.key});

  @override
  State<WorkoutHomePage> createState() => _WorkoutHomePageState();
}

class _WorkoutHomePageState extends State<WorkoutHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/runner_icon.png', width: 24),
                Image.asset('assets/notifications_icon.png', width: 19),
              ],
            ),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: '반가워요'),
                      TextSpan(text: '건강을 위한 한 걸음\n'),
                      TextSpan(text: '오늘도 힘차게 운동을 해볼까요?\n'),
                      TextSpan(text: '> 내 프로필'),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Image.asset('assets/half_circle.png', width: 132),
                    Positioned(
                      left: 15,
                      bottom: 19,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.orange,
                            width: 3,
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/me.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
