import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

final randomizer = Random();

class StartQuiz extends StatefulWidget {
  const StartQuiz({super.key});

  @override
  State<StartQuiz> createState() {
    return _StartQuizState();
  }
}

class _StartQuizState extends State<StartQuiz> {
  void startQuiz() {
    setState(() {
      // Todo do something
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 200),
        const SizedBox(
          height: 50,
        ),
        const StyledText('Learn Flutter the fun way!'),
        const SizedBox(
          height: 50,
        ),
        FilledButton(
          onPressed: startQuiz,
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
