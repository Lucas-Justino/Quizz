import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  StartButton(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: startQuiz,
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Color.fromARGB(255, 237, 223, 252),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
      ),
      icon: const Icon(Icons.play_arrow),
      label: const Text(
        "Start Quiz",
      ),
    );
  }
}
