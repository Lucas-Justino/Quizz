import 'package:flutter/material.dart';

class ButtonStart extends StatelessWidget {
  const ButtonStart({super.key});

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text(
        "Start Quiz",
        style: TextStyle(
          color: Color.fromARGB(255, 237, 223, 252),
          fontSize: 15,
        ),
      ),
    );
  }
}