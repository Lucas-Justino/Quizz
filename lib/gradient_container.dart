import 'package:flutter/material.dart';
import 'package:quizz/button_start.dart';
import 'package:quizz/text_introduction.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
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
