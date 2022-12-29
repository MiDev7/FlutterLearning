import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerQuestion;
  final List<Map<String, Object>> questionsText;
  final int index;
  const Quiz(
      {required this.answerQuestion,
      required this.questionsText,
      required this.index,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'The Quiz',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Question(
          questionsText[index]["questionText"] as String,
        ),
        ...(questionsText[index]["answer"] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }),
      ],
    );
  }
}
