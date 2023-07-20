import 'package:flutter/material.dart';
import 'package:quizz/button_start.dart';
import 'package:quizz/text_introduction.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 76, 6, 119),
            Color.fromARGB(255, 111, 10, 178),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset("assets/images/quiz-logo.png"),
          const TextIntroduction(),
          const ButtonStart(),
        ],
      ),
    );
  }
}
