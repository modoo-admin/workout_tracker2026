import 'package:flutter/material.dart';

class WorkoutHomePage extends StatefulWidget {
  const WorkoutHomePage({super.key});

  @override
  State<WorkoutHomePage> createState() => _WorkoutHomePageState();
}

class _WorkoutHomePageState extends State<WorkoutHomePage> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme=Theme.of(context).textTheme;
    ColorScheme colorScheme =Theme.of(context).colorScheme;
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
                Expanded(
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: '반가워요', style:textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ) ),
                          TextSpan(text: ' 건강을 위한 한 걸음\n',style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: colorScheme.primary,
                          ),
                          ),
                          TextSpan(text: '오늘도 힘차게 운동을 해볼까요?\n'),
                          TextSpan(text: '> 내 프로필'),
                        ],
                      ),
                    ),
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
