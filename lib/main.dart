import 'package:flutter/material.dart';
//material.dart flutter widget implementing material design  guidline by android os

// void main() {
//   runApp(MyApp());
// }
//runapp is function that take a widget we created and draw onto the screen
// it calsl build method in our widget

//short hand to write a function  which has one line of code
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('hello!'),
    );
  }
}
// Stateless Widgets are immuatable i.e that cannot be changed during  runtime .
//build() method return "widget tree" which tells flutter what to draw onto the screen
