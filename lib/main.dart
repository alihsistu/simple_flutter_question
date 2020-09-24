import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    // if (_questionIndex < questions.length) {
    //   print('We have more questions');
    // }
  }

  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Blue', 'score': 1},
        {'text': 'Green', 'score': 2},
        {'text': 'Red', 'score': 3},
      ]
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Mouse', 'score': 2},
        {'text': 'Cat', 'score': 3}
      ]
    },
    {
      'questionText': 'Who\'s your favourite football player?',
      'answers': [
        {'text': 'Messi', 'score': 1},
        {'text': 'Neymar', 'score': 2},
        {'text': 'Ronaldo', 'score': 3}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            // Passing the answerQuestion, questionIndex and questions to the QUIZ Widget
            // (Similar to passing props <quiz :questions="_questions" etc /> as in VUEJS ),
            : Result(_totalScore, _resetQuiz),
        // Second argument is passing a pointer to the method at top to the
        // Result Widget to be called
      ),
    );
  }
}
