import 'package:flutter/material.dart';

class WorkoutGuidePage extends StatelessWidget {
  const WorkoutGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Guide'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Spacer(),
              Text('스쿼트', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationThickness: 2.0,
              ),),
              SizedBox(width: 20),
              Text('산을 오르는 자세를 닮아 붙은 \n이름으로 단시간 안에 체지방을 \n많이 태워 복부 비만에 제격입니다.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
