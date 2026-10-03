import 'package:adv_basics/screens/quiz/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/screens/quiz/results_screen.dart';
import 'package:adv_basics/screens/start_screen.dart';
import 'package:adv_basics/screens/quiz_select_screen.dart';
import 'package:adv_basics/models/quiz.dart';
import 'package:adv_basics/screens/quiz/quiz_manager.dart';

import 'package:adv_basics/data/quizes.dart';

class AppManager extends StatefulWidget {
  const AppManager({super.key});

  @override
  State<AppManager> createState() {
    return _AppManagerState();
  }
}

class _AppManagerState extends State<AppManager> {

  List<String> selectedAnswers = [];
  Quiz? currentQuiz;
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(startToQuizSelect);
    super.initState();
  }

  void toStart() {
    setState(() {
      activeScreen = StartScreen(startToQuizSelect);
    });
  }

  void startToQuizSelect() {
    setState(() {
      activeScreen = QuizSelectScreen(backToStart: toStart, onQuizSelected: quizSelectedToBeTaken);
    });
  }

  void quizSelectedToBeTaken(Quiz q) {
    setState(() {
      activeScreen = QuizManager(currentQuiz: q, onFinishResult: toStart,);
      currentQuiz = q;
    });
  }

  void p(String s) {
    print(s);
  }

  void switchScreen() {
    setState(() {
      // activeScreen = QuestionsScreen(chooseAnswer);
    });
  }

  // void chooseAnswer(String answer) {
  //   selectedAnswers.add(answer);

  //   if (selectedAnswers.length == questions.length) {
  //     setState(() {
  //       activeScreen = ResultsScreen(selectedAnswers, () {
  //         selectedAnswers = [];
  //         switchScreen();
  //       });
  //     });
  //   }
  // }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 74, 83, 219),
                const Color.fromARGB(255, 52, 9, 125),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}