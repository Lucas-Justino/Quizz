import 'package:flutter/material.dart';
import 'package:quizz/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          [Color.fromARGB(255, 76, 6, 119), Color.fromARGB(255, 111, 10, 178)],
        ),
      ),
    ),
  );
}
