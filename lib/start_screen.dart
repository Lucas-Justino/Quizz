import 'package:flutter/material.dart';
import 'package:quizz/button_start.dart';
import 'package:quizz/text_introduction.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
          ),
          const TextIntroduction(),
          const ButtonStart(),
        ],
      ),
    );
  }
}
