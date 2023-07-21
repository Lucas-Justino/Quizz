import 'package:flutter/material.dart';

class RestartButton extends StatelessWidget {
  @override
  Widget build(context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.restart_alt),
      label: Text('Restart Quiz'),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
      ),
    );
  }
}
