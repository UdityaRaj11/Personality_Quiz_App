import 'package:flutter/material.dart';
import 'package:my_first_project/result.dart';
import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final ques = [
    {
      'quesText': 'What\'s your Fav. Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'quesText': 'What\'s your Fav. Animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Snake', 'score': 3},
        {'text': 'Goat', 'score': 1},
      ],
    },
    {
      'quesText': 'What\'s your Fav. Codeing language?',
      'answers': [
        {'text': 'Dart', 'score': 10},
        {'text': 'Python', 'score': 5},
        {'text': 'Java', 'score': 3},
        {'text': 'C++', 'score': 1},
      ],
    },
  ];
  var quesIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      quesIndex = 0;
      _totalScore = 0;
    });
  }

  void answered(int score) {
    _totalScore = _totalScore + score;
    if (quesIndex < ques.length) {
      print('We have more questions!');
    }
    setState(() {
      quesIndex = quesIndex + 1;
    });
    print(quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorSchemeSeed: Color.fromARGB(255, 0, 140, 255),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My First App',
              style: TextStyle(
                fontSize: 20,
                decorationColor: Color.fromARGB(255, 179, 255, 246),
              ),
            ),
          ),
          body: quesIndex < ques.length
              ? Quiz(
                  quesAnswer: answered,
                  questionIndex: quesIndex,
                  questions: ques,
                )
              : Result(_totalScore, _resetQuiz),
        ));
  }
}
