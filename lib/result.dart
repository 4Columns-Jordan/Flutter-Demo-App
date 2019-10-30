import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartQuiz;
  final int resultScore;
  Result({this.restartQuiz, this.resultScore});

  String get resultPhrase{
    var resultText = 'That\'s all Folks';

    if (resultScore <= 30){
      resultText = "Yery Cool Kanye!";
    } else if (resultScore <= 70) {
      resultText = 'Interesting';
    } else if (resultScore <= 120) {
      resultText = 'Hmmmmmmmm';
    } else{
      resultText = '...';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            child: Text('Start Over'),
            onPressed: restartQuiz,
          )
        ],
      )),
    );
  }
}
