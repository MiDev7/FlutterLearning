import 'package:flutter/material.dart';
import './question.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourtie colour?',
      'What is your name ?',
      'What is your dream or goal in life ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
          backgroundColor: const Color.fromARGB(255, 255, 242, 4),
        ),
        body: Column(
          children: [
            const Text(
              'The Quiz',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Question(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Question 1'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Question 2'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Question 3'),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 255, 242, 4),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15.0),
            child: GNav(
              backgroundColor: Color.fromARGB(255, 255, 242, 4),
              gap: 10,
              tabBackgroundColor: Color.fromARGB(128, 153, 145, 2),
              padding: EdgeInsets.all(10),
              color: Colors.white,
              activeColor: Colors.white,
              duration: Duration(milliseconds: 500),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
