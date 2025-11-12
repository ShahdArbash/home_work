import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_modle.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff8E84FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('asset/images/number_question/$index.png'),
            SizedBox(width: 8),
            Text(
              'Question ${quizData[index].numberofQuistion}',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
