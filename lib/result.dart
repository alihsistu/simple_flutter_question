import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  // Similar to COMPUTED in VUEJS
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 3) {
      resultText = 'You are awesome and innocent 🥰';
    } else if (resultScore <= 6) {
      resultText = 'You are strange ?!! 🤡';
    } else {
      resultText = 'You are wierd 🤪 ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text('Restart Quiz'),
              onPressed: resetHandler,
              textColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
