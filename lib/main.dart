import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
//material.dart flutter widget implementing material design  guidline by android os

// void main() {
//   runApp(MyApp());
// }
//runapp is function that take a widget we created and draw onto the screen
// it calsl build method in our widget

//short hand to write a function  which has one line of code
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// leading underscore is special sytanx in dart file that  changes the class from public to private
class _MyAppState extends State<MyApp> {
  //Lists give you an ordered list of single values, identified by an index. Maps use key-value pairs where you identify values by their key.
  final _questions = const [
    {
      'questionText': 'what\'s your fav color?',
      'ans': [
        {'text': 'red', 'score': 10},
        {'text': 'black', 'score': 1},
        {'text': 'green', 'score': 20},
        {'text': 'yellow', 'score': 30}
      ],
    },
    {
      'questionText': 'what\'s your fav animal?',
      'ans': [
        {'text': 'dog', 'score': 1},
        {'text': 'cat', 'score': 30},
        {'text': 'elephant', 'score': 20},
        {'text': 'lion', 'score': 10}
      ],
    },
    {
      'questionText': 'what\'s your fav  teacher?',
      'ans': [
        {'text': 'max', 'score': 1},
        {'text': 'max', 'score': 1},
        {'text': 'max', 'score': 1},
        {'text': 'max', 'score': 1}
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    _questionIndex = 0;
    _totalScore = 0;
  }

  void _answers(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    } else {
      print('no more questions');
    }
    setState(() {
      // is method  by the state class

      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('this is first app'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answers: _answers,
                    questions: _questions,
                    questionIndex: _questionIndex,
                  )
                : Result(_totalScore,
                    _resetQuiz))); // scaffold gives a basic design and structure and color scheme giving a regular UI that looks like a  regular mobile app
  }
}

// Stateless Widgets are immuatable i.e that cannot be changed during  runtime .
//build() method return "widget tree" which tells flutter what to draw onto the screen
