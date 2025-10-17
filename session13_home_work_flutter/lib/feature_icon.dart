import 'package:flutter/material.dart';

class FeatureIcon extends StatelessWidget {
  Color backgroundcolor;
  IconData icon;
  Color iconColor;
  FeatureIcon(
      {super.key,
      required this.backgroundcolor,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
