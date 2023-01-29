import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import 'bottom_bar.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      "questionText": 'What is your favourtie colour?',
      "answer": [
        {'text': 'Yellow', 'score': 5},
        {'text': 'Green', 'score': 8},
        {'text': 'Blue', 'score': 2},
        {'text': 'Red', 'score': 4}
      ],
    },
    {
      "questionText": 'What is your name ?',
      "answer": [
        {'text': 'Tony', 'score': 5},
        {'text': 'Alexander', 'score': 2},
        {'text': 'Angelo', 'score': 4},
        {'text': 'Polo', 'score': 8}
      ],
    },
    {
      "questionText": 'What is your dream or goal in life ?',
      "answer": [
        {'text': 'Smartest', 'score': 4},
        {'text': 'Strongest', 'score': 5},
        {'text': 'Richness', 'score': 3},
        {'text': 'Footballer', 'score': 6}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuestion() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text('My first App'),
            backgroundColor: const Color.fromARGB(255, 73, 4, 90),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionsText: _questions,
                  index: _questionIndex)
              : Result(
                  resetQuestion: _resetQuestion,
                  resultScore: _totalScore,
                ),
          bottomNavigationBar: const BottomBar()),
    );
  }
}
