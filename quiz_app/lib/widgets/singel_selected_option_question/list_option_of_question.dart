import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_modle.dart';
import 'package:quiz_app/model/quiz_manger.dart';
import 'package:quiz_app/widgets/singel_selected_option_question/not_selected_item.dart';
import 'package:quiz_app/widgets/singel_selected_option_question/selected_Item.dart';

class ListOptionsOfQuestion extends StatefulWidget {
  final QuizManger quizManger;
  final QuestionModel questionModel;

  const ListOptionsOfQuestion({
    super.key,
    required this.quizManger,
    required this.questionModel,
  });

  @override
  State<ListOptionsOfQuestion> createState() => _ListOptionsOfQuestionState();
}

class _ListOptionsOfQuestionState extends State<ListOptionsOfQuestion> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.questionModel.options.length,
      itemBuilder: (context, index) {
        final option = widget.questionModel.options[index];
        final isSelected = selectedIndex == index;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                widget.quizManger.updateSelectedAnswer(
                  widget.questionModel,
                  option,
                );
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: isSelected
                  ? SelectedItem(option: option, isMultipl: false)
                  : NotSelectedItem(option: option),
            ),
          ),
        );
      },
    );
  }
}
