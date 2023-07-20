import 'package:flutter/material.dart';

class TextIntroduction extends StatelessWidget {
  const TextIntroduction({super.key});

  @override
  Widget build(context) {
    return const Text(
      "Learn Flutter the fun way!",
      style: TextStyle(
        height: 5,
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }
}
