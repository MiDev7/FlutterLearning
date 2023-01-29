import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuestion;
  final int resultScore;
  const Result(
      {super.key, required this.resetQuestion, required this.resultScore});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = " You are awesome and innocent!";
    } else if (resultScore <= 16) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 24) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              resultPhrase,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Score: $resultScore',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.deepPurple,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            onPressed: resetQuestion,
            child: const Text("Reset"),
          )
        ],
      ),
    );
  }
}
