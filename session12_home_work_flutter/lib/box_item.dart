import 'package:flutter/material.dart';

class boxItem extends StatelessWidget {
  double width;
  double height;
  Color color;
  Widget? child;
  boxItem(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Container(
        width: width,
        height: height,
        color: color,
        child: child,
      ),
    );
  }
}
