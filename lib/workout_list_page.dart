
import 'package:flutter/material.dart';

class WorkoutListPage extends StatelessWidget {
  const WorkoutListPage({super.key});

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