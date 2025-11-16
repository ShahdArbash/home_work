import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_modle.dart';
import 'package:quiz_app/model/quiz_manger.dart';
import 'package:quiz_app/widgets/singel_selected_option_question/not_selected_item.dart';
import 'package:quiz_app/widgets/singel_selected_option_question/selected_Item.dart';

class ListOptionsOfQuestionMulteSelection extends StatefulWidget {
  final QuizManger quizManger;
  final QuestionModel questionModel;

  const ListOptionsOfQuestionMulteSelection({
    super.key,
    required this.quizManger,
    required this.questionModel,
  });

  @override
  State<ListOptionsOfQuestionMulteSelection> createState() =>
      _ListOptionsOfQuestionMulteSelectionState();
}

class _ListOptionsOfQuestionMulteSelectionState
    extends State<ListOptionsOfQuestionMulteSelection> {
  List<int> selectedIndexItems = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.questionModel.options.length,
      itemBuilder: (context, index) {
        final option = widget.questionModel.options[index];
        final isSelected = selectedIndexItems.contains(index);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (isSelected) {
                  selectedIndexItems.remove(index);
                  widget.questionModel.multiSelectedAnswers.remove(option);
                } else {
                  selectedIndexItems.add(index);
                  widget.questionModel.multiSelectedAnswers.add(option);
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: isSelected
                  ? SelectedItem(option: option, isMultipl: true)
                  : NotSelectedItem(option: option),
            ),
          ),
        );
      },
    );
  }
}
