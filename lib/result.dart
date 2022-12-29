import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuestion;
  const Result({super.key, required this.resetQuestion});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            "YOU DID IT !",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
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
