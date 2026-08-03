
import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:Colors.grey.shade300
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.push_pin_outlined),
              Text('Text')
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text:'운동시간\n'),
                      TextSpan(text:'450분'),
                    ]
                  ),
                ),
                Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text:'소모 칼로리\n'),
                        TextSpan(text:'2400 kcal'),
                      ]
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}