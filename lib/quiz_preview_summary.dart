import 'package:flutter/material.dart';
import 'package:adv_basics/data/quizes.dart';
import 'package:adv_basics/models/quiz.dart';

class QuizPreviewSummary extends StatelessWidget {
  const QuizPreviewSummary({super.key, required this.onQuizSelected});

  final void Function(Quiz q) onQuizSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: quizes.map((quiz) {
            return Column(
              children: [
                Text(quiz.quizName),
                Text(quiz.quizDescription),
                OutlinedButton.icon(
                  label: Text('Start'),
                  onPressed: () {
                    onQuizSelected(quiz);
                  },
                  icon: Icon(Icons.arrow_right_alt),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
