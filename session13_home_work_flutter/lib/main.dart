import 'package:flutter/material.dart';
import 'package:session13_home_work_flutter/bottom_action_button.dart';
import 'package:session13_home_work_flutter/features.dart';
import 'package:session13_home_work_flutter/quick_stats.dart';
import 'package:session13_home_work_flutter/welcome_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfffffef7ff),
        body: AppBar(),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(3.14159),
                child: Icon(Icons.play_arrow),
              ),
              Text(
                'Flatter Applicati....',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
          WelcomeCard(),
          QuickStats(),
          Features(),
          Spacer(flex: 6),
          Row(
            children: [
              BottomActionButton(
                text: 'Settings',
                color: Color(0xffff2196f3),
              ),
              SizedBox(
                width: 16,
              ),
              BottomActionButton(
                text: 'Profile',
                color: Color(0xffffff9700),
              )
            ],
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
