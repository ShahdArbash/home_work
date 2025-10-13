import 'package:flutter/material.dart';
import 'package:session12_home_work_flutter/box_item.dart';

class RowGrey extends StatelessWidget {
  const RowGrey({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        boxItem(width: 30, height: 20, color: Color(0xffFFE0E0E0)),
        Expanded(
          child: boxItem(
              width: double.infinity, height: 20, color: Color(0xffFFE0E0E0)),
        ),
      ],
    );
  }
}
