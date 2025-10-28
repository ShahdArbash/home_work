import 'package:bmi_application/widgets/box_item.dart';
import 'package:bmi_application/widgets/text_with_decuration.dart';
import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  const GenderItem({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
    this.isSelected = false,
  });

  final Color? color;
  final IconData icon;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return BoxItem(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 100,
            color: Colors.white,
          ),
          const SizedBox(height: 16),
          TextWithDecuration(text: text),
        ],
      ),
    );
  }
}
