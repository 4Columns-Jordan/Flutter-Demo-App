import 'package:flutter/material.dart';
import 'package:flutter_demo/result.dart';

import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favorite Color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'Black', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite Animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Ardvark', 'score': 30},
        {'text': 'Badger', 'score': 40}
      ]
    },
    {
      'questionText': 'Do you like Beans?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 40}
      ]
    },
    {
      'questionText': 'Are you a government Agent?',
      'answers': [
        {'text': 'Yes', 'score': 100},
        {'text': 'No', 'score': 10},
        {'text': 'Who\'s Asking?', 'score': 0},
        {'text': '...', 'score': 400}
      ]
    },
  ];

  void _anwserQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
      print('Answer Chosen!');
      print(_questionIndex);
      if (_questionIndex < questions.length) {}
    });
  }

  void backQuestion() {
    setState(() {
      _questionIndex--;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('The Quiz')),
          body: _questionIndex < questions.length
              ? Quiz(
                  answerQuestion: _anwserQuestion,
                  questionIndex: _questionIndex,
                  questions: questions,
                )
              : Result(restartQuiz: _restartQuiz, resultScore: _totalScore,)),
    );
  }
}
