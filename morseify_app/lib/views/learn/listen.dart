import 'package:flutter/material.dart';
import 'package:morseify_app/widgets/learn/listeningControls.dart';

class PracticeListening extends StatelessWidget {
  const PracticeListening({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Practice Listening"),
      ),
      body: const SafeArea(
        child: ListeningControls(),
      ),
    );
  }
}
