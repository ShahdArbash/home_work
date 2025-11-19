import 'package:quiz_app/constants/assets.dart';
import 'package:quiz_app/model/question_modle.dart';

class QuizManger {
  List<QuestionModel> quizData = [
    QuestionModel(
      numberofQuistion: 1,
      title_question:
          'How would you describe your level of satisfaction with the healthcare system?',
      options: ['Strongly satisfied', 'Satisfied', 'NOT ACTIVE', 'Rome'],
      correctAnswersIndexes: [1],
      image: Assets.q1,
      isMultiple: false,
    ),
    QuestionModel(
      numberofQuistion: 2,
      title_question: 'Which planet is known as the Red Planet?',
      options: ['Earth', 'Mars', 'Jupiter', 'Saturn'],
      correctAnswersIndexes: [1],
      image: Assets.q2,
      isMultiple: false,
    ),
    QuestionModel(
      numberofQuistion: 3,
      title_question: 'Who wrote "Hamlet"?',
      options: [
        'Charles Dickens',
        'William Shakespeare',
        'Mark Twain',
        'Leo Tolstoy',
      ],
      correctAnswersIndexes: [1, 2],
      image: Assets.q3,
      isMultiple: true,
    ),

    QuestionModel(
      numberofQuistion: 4,
      title_question: 'What is the largest ocean on Earth?',
      options: [
        'Atlantic Ocean',
        'Indian Ocean',
        'Arctic Ocean',
        'Pacific Ocean',
      ],
      correctAnswersIndexes: [1, 2],
      image: Assets.q4,
      isMultiple: true,
    ),
  ];

  void updateSelectedAnswer(QuestionModel question, String userAnswer) {
    question.selectAnswerUser = userAnswer;
  }

  bool isCorrectSingle(QuestionModel question) {
    return question.selectAnswerUser ==
        question.options[question.correctAnswersIndexes.first];
  }

  bool isCorrectMulti(QuestionModel question) {
    final correctAnswers = question.correctAnswersIndexes
        .map((index) => question.options[index])
        .toList();

    return Set.from(
          question.multiSelectedAnswers,
        ).containsAll(correctAnswers) &&
        correctAnswers.length == question.multiSelectedAnswers.length;
  }

  bool isCorrect(QuestionModel question) {
    if (question.isMultiple) {
      return isCorrectMulti(question);
    } else {
      return isCorrectSingle(question);
    }
  }

  int getCorrectAnswersCount() {
    int count = 0;

    for (var question in quizData) {
      if (isCorrect(question)) {
        count++;
      }
    }

    return count;
  }
}
