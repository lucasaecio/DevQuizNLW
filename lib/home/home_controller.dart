import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Lukkhz Dev",
      photoUrl: "https://avatars.githubusercontent.com/u/45777832?v=4",
    );

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        image: AppImages.blocks,
        level: Level.facil,
        title: "NLW 5 - Flutter",
        questions: [
          QuestionModel(
            title: 'Está curtindo o Flutter?',
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Adorando flutter"),
              AnswerModel(title: "Muito top"),
              AnswerModel(title: "Show de boletas", isRight: true),
            ],
          ),
          QuestionModel(
            title: 'Está curtindo o Flutter?',
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Adorando flutter"),
              AnswerModel(title: "Muito top"),
              AnswerModel(title: "Show de boletas", isRight: true),
            ],
          ),
        ],
      )
    ];
    state = HomeState.success;
  }
}
