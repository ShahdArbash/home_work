import 'package:flutter/material.dart';
import 'package:session12_home_work_flutter/box_item.dart';

class BoxBebeGreen extends StatelessWidget {
  Color color;
  BoxBebeGreen({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: boxItem(width: double.infinity / 2, height: 50, color: color),
    );
  }
}
