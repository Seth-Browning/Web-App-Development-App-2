import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';

import 'package:adv_basics/models/quiz.dart';

import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key, required this.quiz, required this.onQuestionsFinished});

  final Quiz quiz;
  final void Function(Quiz q, List<String> answers) onQuestionsFinished;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  final List<String> selectedAnswers = [];
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    selectedAnswers.add(selectedAnswer);
    if (currentQuestionIndex + 1 >= widget.quiz.questions.length) {
      widget.onQuestionsFinished(widget.quiz, selectedAnswers);
      return;
    }

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
