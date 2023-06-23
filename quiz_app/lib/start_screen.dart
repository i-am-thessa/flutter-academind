import 'package:flutter/material.dart';
import 'package:quiz_app/start_quiz.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class StartScreen extends StatelessWidget {
  const StartScreen(this.color1, this.color2, {super.key});

  const StartScreen.purple({super.key})
      : color1 = const Color.fromARGB(255, 83, 12, 207),
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StartQuiz(),
      ),
    );
  }
}
