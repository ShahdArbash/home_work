import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_manger.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/theme/decoration_background.dart';

class ResultPage extends StatelessWidget {
  final QuizManger quizManger;

  const ResultPage({super.key, required this.quizManger});

  @override
  Widget build(BuildContext context) {
    int correctCount = quizManger.getCorrectAnswersCount();
    int total = quizManger.quizData.length;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DecorationBackground(
        isCenterGradient: false,
        CompunentsOfPage: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your Result",
                  style: AppTextStyles.bold24(color: AppColors.meanWhite),
                ),

                SizedBox(height: 30),

                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.secondaryColor.withValues(alpha: 0.4),
                  ),
                  child: Center(
                    child: Text(
                      "$correctCount / $total",
                      style: AppTextStyles.bold24(color: AppColors.meanWhite),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                Center(
                  child: Text(
                    "You answered $correctCount out of $total questions correctly!",
                    style: AppTextStyles.medium16(color: AppColors.meanWhite),
                  ),
                ),

                SizedBox(height: 40),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondaryColor.withValues(
                      alpha: 0.4,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Retry Quiz",
                    style: AppTextStyles.bold16(color: AppColors.meanWhite),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
