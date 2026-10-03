import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';

import 'package:adv_basics/models/quiz.dart';

import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key, required this.quiz});

  final void Function(String answer) onSelectAnswer;
  final Quiz quiz;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestions = widget.quiz.questions[currentQuestionIndex];

    return Container(
      margin: EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestions.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 192, 195, 254),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...currentQuestions.getShuffledAnswers().map((item) {
              return AnswerButton(item, () {
                answerQuestion(item);
              });
            }),
          ],
        ),
      ),
    );
  }
}
