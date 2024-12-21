import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainAppState();
  }
}

class MainAppState extends State<MainApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = Random().nextInt(2);
    });
    print(questionIndex);
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
              children: [
                Text(questions[questionIndex]),
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
