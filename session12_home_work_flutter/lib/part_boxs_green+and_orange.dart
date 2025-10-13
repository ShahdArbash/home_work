import 'package:flutter/material.dart';
import 'package:session12_home_work_flutter/box_green.dart';
import 'package:session12_home_work_flutter/box_orange.dart';

class PartBoxsGreenAndOrange extends StatelessWidget {
  const PartBoxsGreenAndOrange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color.fromARGB(255, 218, 255, 237),
          child: Column(
            children: [
              BoxGreen(),
              BoxGreen(),
            ],
          ),
        ),
        BoxOrange(),
        BoxOrange(),
      ],
    );
  }
}
