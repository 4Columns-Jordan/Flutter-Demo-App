import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        color: Colors.red,
        textColor: Colors.white,
      ),
    );
  }
}
