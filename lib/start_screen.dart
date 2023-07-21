import 'package:flutter/material.dart';
import 'package:quizz/button_start.dart';
import 'package:quizz/text_introduction.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const TextIntroduction(),
          ButtonStart(startQuiz),
        ],
      ),
    );
  }
}
