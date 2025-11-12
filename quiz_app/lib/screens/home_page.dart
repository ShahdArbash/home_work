import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_modle.dart';
import 'package:quiz_app/widgets/decoration_background.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/widgets/question_card.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  int currentIndex = 0;
  List<int?> selectedAnswers = [];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return DecorationBackground(
      isCenterGradient: false,
      CompunentsOfPage: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [SizedBox(height: 30), SizedBox(height: 30), Text('')],
            ),
          ),
        ),
      ),
    );
  }
}
