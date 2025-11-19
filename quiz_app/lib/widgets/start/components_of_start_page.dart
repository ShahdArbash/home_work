import 'package:flutter/material.dart';
import 'package:quiz_app/constants/assets.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/widgets/start/button_start.dart';

class ComponentsOfStartPage extends StatelessWidget {
  const ComponentsOfStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 42, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good morning,",
                style: AppTextStyles.regular16(color: AppColors.meanWhite),
              ),
              const SizedBox(height: 8),

              Text(
                "New topic is waiting",
                style: AppTextStyles.medium24(color: AppColors.meanWhite),
              ),
              SizedBox(height: 14),
              Image.asset(Assets.homeImage),
              Expanded(child: SizedBox()),
              Row(children: [Expanded(child: ButtonStart())]),
            ],
          ),
        ),
      ),
    );
  }
}
