import 'package:flutter/material.dart';

class ButtonStart extends StatelessWidget {
  ButtonStart(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: startQuiz,
      style: OutlinedButton.styleFrom(
        foregroundColor: Color.fromARGB(255, 237, 223, 252),
      ),
      icon: const Icon(Icons.play_arrow),
      label: const Text(
        "Start Quiz",
      ),
    );
  }
}
