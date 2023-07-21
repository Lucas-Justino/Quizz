import 'package:flutter/material.dart';
import 'package:quizz/restart_button.dart';

class ResultsScreen extends StatelessWidget{

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
            Text('List of Questions'),
            SizedBox(height: 30,),
            RestartButton(),
          ],
        ),
      ),
    );
  }
}