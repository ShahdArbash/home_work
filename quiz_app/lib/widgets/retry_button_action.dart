import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_manger.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

class RetryButtonAction extends StatelessWidget {
  final QuizManger quizManger;
  const RetryButtonAction({super.key, required this.quizManger});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondaryColor.withValues(alpha: 0.4),
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        Navigator.pop(context);
        for (var q in quizManger.quizData) {
          q.selectAnswerUser = '';
          q.multiSelectedAnswers = [];
        }
      },
      child: Text(
        "Retry Quiz",
        style: AppTextStyles.bold16(color: AppColors.meanWhite),
      ),
    );
  }
}
