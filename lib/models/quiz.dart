import 'package:adv_basics/models/quiz_question.dart';

class Quiz {

  const Quiz({
    required this.quizName,
    required this.quizDescription,
    required this.questions
  });

  final String quizName;
  final String quizDescription;
  final List<QuizQuestion> questions;
}