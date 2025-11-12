class QuestionModel {
  final int numberofQuistion;
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  QuestionModel({
    required this.numberofQuistion,
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}

List<QuestionModel> quizData = [
  QuestionModel(
    numberofQuistion: 1,
    question: 'What is the capital of France?',
    options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
    correctAnswerIndex: 2,
  ),
  QuestionModel(
    numberofQuistion: 2,
    question: 'Which planet is known as the Red Planet?',
    options: ['Earth', 'Mars', 'Jupiter', 'Saturn'],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    numberofQuistion: 3,
    question: 'Who wrote "Hamlet"?',
    options: [
      'Charles Dickens',
      'William Shakespeare',
      'Mark Twain',
      'Leo Tolstoy',
    ],
    correctAnswerIndex: 1,
  ),

  QuestionModel(
    numberofQuistion: 4,
    question: 'What is the largest ocean on Earth?',
    options: [
      'Atlantic Ocean',
      'Indian Ocean',
      'Arctic Ocean',
      'Pacific Ocean',
    ],
    correctAnswerIndex: 3,
  ),
];
