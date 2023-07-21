import 'package:flutter/material.dart';
import 'package:quizz/summary.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Summary(data);
          }).toList(),
        ),
      ),
    );
  }

  Widget teste(Map<String, Object> map){
    return Container();
  }
}
