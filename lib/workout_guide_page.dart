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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Spacer(),
              Text(
                '스쿼트',
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
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 70,
              ),
              Expanded(child: Image.asset('assets/squat.png')),
              IconButton(
                onPressed: () {},
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
                      '30분',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color:Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.play_circle),
            iconSize: 70,
            color:Colors.blue,
          ),
        ],
      ),
    );
  }
}
