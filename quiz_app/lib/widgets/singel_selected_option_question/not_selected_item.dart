import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

class NotSelectedItem extends StatelessWidget {
  final String option;

  const NotSelectedItem({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.meanWhite,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              radius: 10,
              child: CircleAvatar(
                radius: 9,
                backgroundColor: AppColors.meanWhite,
              ),
            ),
            SizedBox(width: 16),
            Text(
              option,
              style: AppTextStyles.medium16(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
