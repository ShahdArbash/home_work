import 'package:flutter/material.dart';
import 'package:session12_home_work_flutter/box_item.dart';

class BoxSmallPurpel extends StatelessWidget {
  const BoxSmallPurpel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return boxItem(
        width: double.infinity,
        height: 35,
        color: const Color.fromARGB(255, 206, 60, 232));
  }
}
