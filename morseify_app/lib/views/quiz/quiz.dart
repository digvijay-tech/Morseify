import 'package:flutter/material.dart';
import 'package:morseify_app/widgets/quiz/welcome.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Quiz"),
      ),
      body: const SafeArea(
        child: WelcomeQuiz(),
      ),
    );
  }
}
