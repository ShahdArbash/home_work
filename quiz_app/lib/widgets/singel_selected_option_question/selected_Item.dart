import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/constants/assets.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_decoration.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

class SelectedItem extends StatelessWidget {
  final String option;
  final bool isMultipl;

  const SelectedItem({
    super.key,
    required this.option,
    required this.isMultipl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppDecoration.SecoundaryGradient(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: AppColors.primaryColor,
              child: CircleAvatar(
                backgroundColor: isMultipl
                    ? AppColors.secondaryColor
                    : AppColors.primaryColor,
                radius: 9,
                child: SvgPicture.asset(
                  Assets.chikIcon,
                  color: isMultipl
                      ? AppColors.primaryColor
                      : AppColors.meanWhite,
                ),
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
