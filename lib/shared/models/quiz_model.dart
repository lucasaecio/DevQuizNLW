import 'question_model.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final Level level;
  final String title;
  final String image;
  final int questionAnsweredCount;
  final List<QuestionModel> question;

  QuizModel({
    required this.title,
    required this.question,
    this.questionAnsweredCount = 0,
    required this.image,
    required this.level,
  });
}
