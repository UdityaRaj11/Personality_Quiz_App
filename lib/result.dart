// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function handleRest;
  Result(this.resultScore, this.handleRest);

  String get comment {
    String resText;
    if (resultScore <= 8) {
      resText = 'You are sweet, never give up!!';
    } else if (resultScore <= 12) {
      resText = 'Good Enough!';
    } else if (resultScore <= 16) {
      resText = 'Pretty Badass!';
    } else {
      resText = 'You are at a different Level.';
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          comment,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: Text('Restart Quiz!!'),
          onPressed: handleRest,
        ),
      ],
    ));
  }
}
