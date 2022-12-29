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
      "answer": ['Yellow', 'Green', 'Blue', 'Red'],
    },
    {
      "questionText": 'What is your name ?',
      "answer": ['Tony', 'Alexander', 'Angelo', 'Polo'],
    },
    {
      "questionText": 'What is your dream or goal in life ?',
      "answer": ['Smartest', 'Strongest', 'Richness', 'Footballer'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuestion() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My first App'),
            backgroundColor: const Color.fromARGB(255, 73, 4, 90),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionsText: _questions,
                  index: _questionIndex)
              : Result(resetQuestion: _resetQuestion),
          bottomNavigationBar: const BottomBar()),
    );
  }
}
