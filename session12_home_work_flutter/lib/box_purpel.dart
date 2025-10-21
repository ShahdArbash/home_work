import 'package:flutter/material.dart';
import 'package:session12_home_work_flutter/box_item.dart';

class BoxPurpule extends StatelessWidget {
  Widget? child;
  BoxPurpule({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return boxItem(
      width: 85,
      height: 90,
      color: const Color(0xffffe1bee8),
      child: child,
    );
  }
}
