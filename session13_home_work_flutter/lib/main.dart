import 'package:flutter/material.dart';
import 'package:session13_home_work_flutter/bottom_action_button.dart';
import 'package:session13_home_work_flutter/feature_icon.dart';
import 'package:session13_home_work_flutter/feature_tile.dart';
import 'package:session13_home_work_flutter/state_card.dart';
import 'package:session13_home_work_flutter/text_column.dart';
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
        body: Padding(
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
              Text(
                'Quick Stats',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatCard(
                    icon: Icons.people,
                    color: Color(0xffff673bb7),
                    number: '1,234',
                    text: 'Users',
                  ),
                  StatCard(
                    icon: Icons.star,
                    color: Colors.yellow,
                    number: '4.8',
                    text: 'Rating',
                  ),
                  StatCard(
                    icon: Icons.trending_up,
                    color: Colors.lightBlueAccent,
                    number: '98%',
                    text: 'Success',
                  )
                ],
              ),
              Text(
                'Features',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Column(
                children: [
                  FeatureTile(
                    textcolumn: TextColumn(
                        title: 'Fast Performance',
                        text: 'Lightning fast app performance'),
                    iconcard: FeatureIcon(
                        backgroundcolor: Color(0xffffefebf9),
                        icon: Icons.speed,
                        iconColor: Color(0xffff673bb7)),
                  ),
                  FeatureTile(
                    textcolumn: TextColumn(
                        title: 'Secure', text: 'Your data is safe with us'),
                    iconcard: FeatureIcon(
                        backgroundcolor: Color(0xffffeaf6fe),
                        icon: Icons.security,
                        iconColor: Color(0xffff228fee)),
                  ),
                  FeatureTile(
                    textcolumn: TextColumn(
                        title: 'Beautiful UI', text: 'Modern and clean design'),
                    iconcard: FeatureIcon(
                        backgroundcolor: Color(0xfffffff4e7),
                        icon: Icons.palette,
                        iconColor: Color(0xfffff9900f)),
                  ),
                ],
              ),
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
        ),
      ),
    );
  }
}
