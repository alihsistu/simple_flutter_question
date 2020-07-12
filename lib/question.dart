import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // adding final prevents from changing the variable

  Question(this.questionText);
  // const Question({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
