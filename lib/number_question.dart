import 'package:flutter/material.dart';

class NumberQuestion extends StatelessWidget {
  NumberQuestion(this.isCorrectAnswer, this.indexQuestion, {super.key});

  final bool isCorrectAnswer;
  final int indexQuestion;

  @override
  Widget build(context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        (indexQuestion + 1).toString(),
      ),
    );
  }
}
