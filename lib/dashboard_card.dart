
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardCard extends StatelessWidget {
  Icon icon;
  Text title;
  Widget info;
  Function()? customOnTap;
  DashboardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.info,
    this.customOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:customOnTap,
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:Colors.grey.shade300
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                icon,

                SizedBox(width:5),
                //Text('Text')
                title,
              ],
            ),
            Expanded(
              child: info,
            ),
          ],
        ),
      ),
    );
  }
}

/*
* Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
* */