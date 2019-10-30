import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void anwserQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print('Answer Chosen!');
      print(_questionIndex);
    });
  }

  void backQuestion(){
    setState(() {
      _questionIndex--;
    });
  }

  void restartQuiz(){
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite Color?',
      'What\'s your favorite Animal?',
      'Do you like Beans?',
      'Are you a government Agent?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Firlst App')),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(child: Text('Click Me!'), onPressed: anwserQuestion),
            RaisedButton(child: Text('Back'), onPressed: backQuestion),
            RaisedButton(child: Text('Restart'), onPressed: restartQuiz),
          ],
        ),
      ),
    );
  }
}
