import 'package:flutter/material.dart';
import 'package:adv_basics/data/quizes.dart';
import 'package:adv_basics/models/quiz.dart';

class QuizPreviewSummary extends StatelessWidget {
  const QuizPreviewSummary({super.key, required this.onQuizSelected});

  final void Function(Quiz q) onQuizSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: quizes.map((quiz) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(quiz.quizName, style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
                Text(quiz.quizDescription, style: TextStyle(
                  color: Colors.grey
                )),
                OutlinedButton.icon(
                  label: Text('Start'),
                  onPressed: () {
                    onQuizSelected(quiz);
                  },
                  icon: Icon(Icons.arrow_right_alt),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                    foregroundColor: Colors.white
                  )
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
