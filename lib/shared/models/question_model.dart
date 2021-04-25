import 'package:dev_quiz/shared/models/answer_mode.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answers;

  QuestionModel({
    required this.title,
    required this.answers,
  }) : assert(
          answers.length == 4,
        );
}
