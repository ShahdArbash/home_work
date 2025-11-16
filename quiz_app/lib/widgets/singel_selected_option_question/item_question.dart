import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_modle.dart';
import 'package:quiz_app/model/quiz_manger.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/widgets/multe_selected_options/list_options_of_question_multe_selection.dart';
import 'package:quiz_app/widgets/singel_selected_option_question/list_option_of_question.dart';
import 'package:quiz_app/widgets/singel_selected_option_question/number_question_card.dart';

class ItemQuestion extends StatelessWidget {
  final QuestionModel questionModel;
  final QuizManger quizManger;
  const ItemQuestion({
    super.key,
    required this.questionModel,
    required this.quizManger,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NumberQuestionCard(questionModel: questionModel),
        SizedBox(height: 16),
        Text(
          questionModel.title_question,
          style: AppTextStyles.bold24(color: Colors.white),
        ),
        SizedBox(height: 32),
        Expanded(
          child: questionModel.isMultiple
              ? ListOptionsOfQuestionMulteSelection(
                  quizManger: quizManger,
                  questionModel: questionModel,
                )
              : ListOptionsOfQuestion(
                  quizManger: quizManger,
                  questionModel: questionModel,
                ),
        ),
      ],
    );
  }
}
