import 'package:flutter/material.dart';
import 'package:quizz/answer_button.dart';
import 'package:quizz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.question,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.answers.map(
              (answer) {
                return AnswerButton(answer, () {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
