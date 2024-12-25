import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    print(questionText);
    return Container(
        width: double.infinity,
        color: Color.fromARGB(255, 136, 53, 53),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.center,
        ));
  }
}
