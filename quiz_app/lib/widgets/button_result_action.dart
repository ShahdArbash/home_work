import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

class ButtonResultAction extends StatelessWidget {
  const ButtonResultAction({super.key, required this.ontap});
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          color: const Color(0xFF8D83FF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 11,
          children: [
            Text('Result', style: AppTextStyles.medium16(color: Colors.white)),
            Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
