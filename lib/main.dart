import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = Random().nextInt(2);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("This is a title"),
              backgroundColor: Colors.blue,
              centerTitle: true,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Text(questions[questionIndex],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      background: Paint()..color = Colors.red,
                    )),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: Text("This is a button"),
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: Text("This is a button"),
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: Text("This is a button"),
                ),
              ],
            )));
  }
}
