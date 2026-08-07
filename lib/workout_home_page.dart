import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'dashboard_card.dart';

class WorkoutHomePage extends StatefulWidget {
  const WorkoutHomePage({super.key});

  @override
  State<WorkoutHomePage> createState() => _WorkoutHomePageState();
}

class _WorkoutHomePageState extends State<WorkoutHomePage> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
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
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '반가워요',
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' 건강을 위한 한 걸음\n',
                          style: textTheme.bodyLarge?.copyWith(
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
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: DashboardCard(
                      icon:Icon(Icons.push_pin_outlined),
                      title: Text('Today'),
                      info: Column(
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
                    ),
                  ),
                  Expanded(
                    child: DashboardCard(
                      icon:Icon(Icons.fax_rounded),
                      title: Text('Monthly'),
                      info: Container(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 170,
                      child: DashboardCard(
                        icon:Icon(Icons.baby_changing_station_rounded),
                        title: Text('그룹1'),
                        info: Container(),
                        customOnTap: (){
                          context.go('/workout_home/workout_list');
                        },
                      ),
                    ),

                    SizedBox(
                      width: 170,
                      child: DashboardCard(
                        icon:Icon(Icons.eighteen_up_rating_outlined),
                        title: Text('그룹2'),
                        info: Container(),
                      ),
                    ),

                    SizedBox(
                      width: 170,
                      child: DashboardCard(
                        icon:Icon(Icons.wallet_giftcard),
                        title: Text('그룹3'),
                        info: Container(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 2, child: DashboardCard(
              icon:Icon(Icons.ac_unit_sharp),
              title: Text('오늘의 운동'),
              info: Container(),
            ),),
          ],
        ),
      ),
    );
  }
}
