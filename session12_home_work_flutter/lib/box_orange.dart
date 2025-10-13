import 'package:flutter/material.dart';
import 'package:session12_home_work_flutter/box_item.dart';

class BoxOrange extends StatelessWidget {
  const BoxOrange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: boxItem(width: double.infinity, height: 100, color: Colors.orange),
    );
  }
}
