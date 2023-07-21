import 'package:flutter/material.dart';
import 'package:quizz/data/questions.dart';
import 'package:quizz/questions_screen.dart';
import 'package:quizz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        selectedAnswers = [];
        activeScreen = "start-screen";
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == "start-screen"
              ? StartScreen(switchScreen)
              : QuestionsScreen(chooseAnswer),
        ),
      ),
    );
  }
}
