import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/components_of_start_page.dart';
import 'package:quiz_app/widgets/decoration_background.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecorationBackground(
      CompunentsOfPage: ComponentsOfStartPage(),
      isCenterGradient: true,
    );
  }
}
