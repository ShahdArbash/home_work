import 'package:flutter/material.dart';
import 'package:session12_home_work_flutter/box_purpel.dart';
import 'package:session12_home_work_flutter/box_small_perpule.dart';

class PartBoxPerpule extends StatelessWidget {
  const PartBoxPerpule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFF3E5F6),
      child: Row(
        children: [
          BoxPurpule(),
          BoxPurpule(
            child: Column(
              children: [
                BoxSmallPurpel(),
                BoxSmallPurpel(),
              ],
            ),
          ),
          BoxPurpule(),
        ],
      ),
    );
  }
}
