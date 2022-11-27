import 'package:flutter/material.dart';
import 'question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function quesAnswer;

  Quiz({
    @required this.questions,
    @required this.quesAnswer,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['quesText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((Answer) {
          return Ans(() => quesAnswer(Answer['score']), Answer['text']);
        }).toList()
      ],
    );
  }
}
