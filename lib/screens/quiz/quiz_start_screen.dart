import 'package:adv_basics/screens/quiz/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/models/quiz.dart';
import 'package:adv_basics/screens/quiz/questions_screen.dart';

class QuizStartScreen extends StatelessWidget {
  const QuizStartScreen({
    super.key,
    required this.selectedQuiz,
    required this.onQuizQuit,
    required this.onQuizStart,
  });

  final void Function() onQuizStart;
  final void Function() onQuizQuit;
  final Quiz selectedQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(selectedQuiz.quizName, style: TextStyle(fontSize: 48, color: Colors.white)),
          Text(selectedQuiz.quizDescription, style: TextStyle(color: Colors.white)),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton.icon(
                  onPressed: onQuizQuit,
                  label: Text('Cancel'),
                  icon: Icon(Icons.arrow_left),
                  style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                ),
                OutlinedButton.icon(
                  onPressed: onQuizStart,
                  label: Text('Begin'),
                  icon: Icon(Icons.arrow_right),
                  style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
