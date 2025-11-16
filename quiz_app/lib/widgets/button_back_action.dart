import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

class ButtonBackAction extends StatelessWidget {
  final Function() ontap;
  const ButtonBackAction({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: const Color(0xFF8D83FF)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            Icon(Icons.arrow_back_ios, size: 16, color: Colors.white),
            Text('Back', style: AppTextStyles.medium16(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
