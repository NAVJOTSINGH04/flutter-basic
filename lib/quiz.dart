import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answers;

  Quiz(
      {@required this.questions,
      @required this.answers,
      @required this.questionIndex});
  // @ required is decorated provided by material.dart that tells these fields are required
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['ans'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answers(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
