// Quiz logic and controls
import 'package:flutter/material.dart';

class QuizControls extends StatefulWidget {
  const QuizControls({super.key});

  @override
  State<QuizControls> createState() => _QuizControlsState();
}

class _QuizControlsState extends State<QuizControls> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Quiz Controls"),
    );
  }
}
