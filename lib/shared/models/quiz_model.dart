import 'dart:convert';

import 'question_model.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level get parse => {
        "facil": Level.facil,
        "medio": Level.medio,
        "dificil": Level.dificil,
        "perito": Level.perito
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.facil: "facil",
        Level.medio: "medio",
        Level.dificil: "dificil",
        Level.perito: "perito"
      }[this]!;
}

class QuizModel {
  final Level level;
  final String title;
  final String image;
  final int questionAnsweredCount;
  final List<QuestionModel> questions;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionAnsweredCount = 0,
    required this.image,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    return {
      'level': level.parse,
      'title': title,
      'image': image,
      'questionAnsweredCount': questionAnsweredCount,
      'questions': questions.map((x) => x.toMap()).toList(),
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      level: map['level'].toString().parse,
      title: map['title'],
      image: map['image'],
      questionAnsweredCount: map['questionAnsweredCount'],
      questions: List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
