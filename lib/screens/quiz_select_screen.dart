import 'package:flutter/material.dart';
import 'package:adv_basics/models/quiz.dart';
import 'package:adv_basics/quiz_preview_summary.dart';

class QuizSelectScreen extends StatelessWidget {
  const QuizSelectScreen({
    super.key,
    required this.backToStart,
    required this.onQuizSelected,
  });

  final void Function() backToStart;
  final void Function(Quiz q) onQuizSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 24,
          children: [
            OutlinedButton.icon(
              onPressed: backToStart,
              icon: Icon(Icons.arrow_left),
              label: Text('Back'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              )
            ),
            QuizPreviewSummary(onQuizSelected: onQuizSelected,),
          ],
        ),
      ),
    );
  }
}
