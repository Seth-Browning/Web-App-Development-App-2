import 'package:adv_basics/screens/quiz/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/models/quiz.dart';
import 'package:adv_basics/screens/quiz/questions_screen.dart';
import 'package:adv_basics/screens/quiz/quiz_start_screen.dart';

enum QuizManagerState { quiz, results }

class QuizManager extends StatefulWidget {
  QuizManager({
    super.key,
    required this.currentQuiz,
    required this.onFinishResult,
  });

  final Quiz currentQuiz;
  final List<String> selectedAnswers = [];
  final void Function() onFinishResult;

  @override
  State<QuizManager> createState() {
    return _QuizManagerState();
  }
}

class _QuizManagerState extends State<QuizManager> {
  QuizManagerState state = QuizManagerState.quiz;
  Widget? activeWidget;
  void Function() get onFinishResultRef => widget.onFinishResult;

  @override
  void initState() {
    activeWidget = QuizStartScreen(
      onQuizQuit: quizQuit,
      onQuizStart: questionsStart,
      selectedQuiz: widget.currentQuiz,
    );
    super.initState();
  }

  void fallbackFinish() {
    widget.onFinishResult();
  }

  void questionsFinished(Quiz q, List<String> answers) {
    setState(() {
      activeWidget = ResultsScreen(
        answers,
        widget.onFinishResult,
        referenceQuiz: widget.currentQuiz,
      );
    });
  }

  void questionsStart() {
    setState(() {
      activeWidget = QuestionsScreen(
        quiz: widget.currentQuiz,
        onQuestionsFinished: questionsFinished,
      );
    });
  }

  void quizQuit() {
    widget.onFinishResult();
  }

  @override
  Widget build(BuildContext context) {
    return activeWidget ??
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('An error has occured'),
              OutlinedButton.icon(
                label: Text('Back'),
                onPressed: fallbackFinish,
                icon: Icon(Icons.arrow_left),
              ),
            ],
          ),
        );
  }
}
