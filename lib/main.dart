import 'package:flutter/material.dart';
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
    var questions = [
      'what\'s your fav color?',
      'what\'s your fav animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is first app'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            RaisedButton(child: Text("answer 1"), onPressed: _answers),
            RaisedButton(
                child: Text("answer 2"),
                onPressed: () => print("second answer is choosen ")),
            RaisedButton(
                child: Text("answer 3"),
                onPressed: () {
                  //..anonymous function is used when function is used only ones
                  print("3rd answer is choosen ");
                })
          ],
        ),
      ),
    ); // scaffold gives a basic design and structure and color scheme giving a regular UI that looks like a  regular mobile app
  }
}

// Stateless Widgets are immuatable i.e that cannot be changed during  runtime .
//build() method return "widget tree" which tells flutter what to draw onto the screen
