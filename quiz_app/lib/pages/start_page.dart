import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/start/components_of_start_page.dart';
import 'package:quiz_app/theme/decoration_background.dart';

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
