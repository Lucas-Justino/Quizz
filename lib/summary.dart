import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz/number_question.dart';

class Summary extends StatelessWidget {

  const Summary(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(context) {
    final bool isCorrectAnswer = data['user_answer'] == data['correct_answer'];

    return Container(
      padding: const EdgeInsetsDirectional.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NumberQuestion(isCorrectAnswer, (data['question_index'] as int)),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  data['user_answer'] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 202, 171, 252)),
                ),
                Text(
                  data['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 246)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
