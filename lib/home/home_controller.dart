import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_mode.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

import 'home_repository.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.sucess;
  }
}
