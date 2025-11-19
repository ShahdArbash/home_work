class QuestionModel {
  final int numberofQuistion;
  final String image;
  final String title_question;
  final List<String> options;

  final List<int> correctAnswersIndexes;

  String selectAnswerUser = '';
  List<String> multiSelectedAnswers = [];
  final bool isMultiple;

  QuestionModel({
    required this.isMultiple,
    required this.numberofQuistion,
    required this.title_question,
    required this.options,
    required this.correctAnswersIndexes,
    required this.image,
  });
}
