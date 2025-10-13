import 'package:flutter/material.dart';
import 'package:session12_home_work_flutter/box_item.dart';

class BoxGreen extends StatelessWidget {
  const BoxGreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return boxItem(
      width: 175,
      height: 45,
      color: Colors.green,
    );
  }
}
