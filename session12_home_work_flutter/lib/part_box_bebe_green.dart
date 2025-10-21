import 'package:flutter/material.dart';
import 'package:session12_home_work_flutter/box_bebe_green.dart';

class PartBoxBebeGreen extends StatelessWidget {
  const PartBoxBebeGreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BoxBebeGreen(color: Color(0xffffb2dfdc)),
        BoxBebeGreen(color: Color(0xffff80cbc4)),
      ],
    );
  }
}
