// Actual quiz feature
import 'package:flutter/material.dart';
import 'package:morseify_app/widgets/quiz/quizControls.dart';

class QuizAttempt extends StatelessWidget {
  const QuizAttempt({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      // swipe to back is diabled
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Exit Quiz"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
        ),
        body: const SafeArea(
          child: QuizControls(),
        ),
      ),
    );
  }
}
