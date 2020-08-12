import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
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
  var _questionIndex = 0;

  void _answers() {
    setState(() {
      // is method  by the state class

      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //Lists give you an ordered list of single values, identified by an index. Maps use key-value pairs where you identify values by their key.
    const questions = [
      {
        'questionText': 'what\'s your fav color?',
        'ans': ['red', 'black', 'green', 'yellow'],
      },
      {
        'questionText': 'what\'s your fav animal?',
        'ans': ['dog', 'cat', 'elephant', 'lion'],
      },
      {
        'questionText': 'what\'s your fav  teacher?',
        'ans': ['max', 'max', 'max', 'max'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is first app'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['ans'] as List<String>).map((answer) {
              return Answer(_answers, answer);
            }).toList()
          ],
        ),
      ),
    ); // scaffold gives a basic design and structure and color scheme giving a regular UI that looks like a  regular mobile app
  }
}

// Stateless Widgets are immuatable i.e that cannot be changed during  runtime .
//build() method return "widget tree" which tells flutter what to draw onto the screen
