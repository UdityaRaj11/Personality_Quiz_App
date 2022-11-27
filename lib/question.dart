import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesText;

  Question(this.quesText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          quesText,
          style: TextStyle(
            fontSize: 28,
            decorationColor: Color.fromARGB(255, 243, 101, 50),
          ),
          textAlign: TextAlign.center,
        ));
  }
}
