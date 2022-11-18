import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
