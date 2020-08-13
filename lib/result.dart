import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "yor are awsome";
    } else if (resultScore <= 20) {
      resultText = "yor are good";
    } else if (resultScore <= 30) {
      resultText = "yor are strange";
    } else {
      resultText = "bad!!!!!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz'), onPressed: resetHandler),
        ],
      ),
    );
  }
}
