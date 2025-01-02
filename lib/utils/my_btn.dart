import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String btnText;
  VoidCallback onPressed;

  MyBtn({super.key, required this.btnText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.yellow,
      child: Text(btnText),
    );
  }
}
