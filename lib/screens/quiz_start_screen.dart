import 'package:flutter/material.dart';
import 'package:adv_basics/models/quiz.dart';

class QuizStartScreen extends StatelessWidget {
  const QuizStartScreen({
    super.key,
    required this.backToQuizSelect,
    required this.startQuiz,
    required this.quiz
  });

  final Quiz quiz;
  final void Function() backToQuizSelect;
  final void Function(Quiz q) startQuiz;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OutlinedButton.icon(
            label: Text('Back'),
            icon: Icon(Icons.arrow_left),
            onPressed: backToQuizSelect,
          ),
          SizedBox(height: 12),
          OutlinedButton.icon(
            label: Text('Begin'),
            icon: Icon(Icons.arrow_right_alt),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
