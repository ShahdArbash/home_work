import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_modle.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

class NumberQuestionCard extends StatelessWidget {
  const NumberQuestionCard({super.key, required this.questionModel});
  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(questionModel.image),
            SizedBox(width: 8),
            Text(
              'Question ${questionModel.numberofQuistion}',
              style: AppTextStyles.regular12(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
