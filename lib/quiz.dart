import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // Accepting the questions, answerQuestions and questionIndex values (props in VUEJS)
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  // Initializing the above values and making them required
  // props:{
  // questions:{ required:true }
  // }
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => answerQuestion(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
