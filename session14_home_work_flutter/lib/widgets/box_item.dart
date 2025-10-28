import 'package:flutter/material.dart';

class BoxItem extends StatelessWidget {
  Color? color;
  Widget child;
  BoxItem({
    super.key,
    this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: color ?? const Color(0xffff17172f),
          borderRadius: BorderRadius.circular(16),
        ),
        child: child);
  }
}
