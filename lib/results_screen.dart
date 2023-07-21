import 'package:flutter/material.dart';
import 'package:quizz/data/questions.dart';
import 'package:quizz/questions_summary.dart';
import 'package:quizz/restart_button.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData(){
    List<Map<String, Object>> summary = [];

    for(int i = 0; i < chosenAnswers.length; i++){
      summary.add({
        'question_index' : i,
        'question' : questions[i].question,
        'correct_answer' : questions[i].answers[0],
        'user_answer' : chosenAnswers[i]
      });
    }

    return summary;
  }

  Widget build(context){
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered x out of y questions correctly!'),
            SizedBox(height: 30,),
            QuestionsSummary(getSummaryData()),
            SizedBox(height: 30,),
            RestartButton(),
          ],
        ),
      ),
    );
  }
}