import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';
import 'package:morseify_app/widgets/learn/learningOptions.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Learn"),
      ),
      body: SafeArea(
        child: ListView(
          children: const [
            SizedBox(height: 10.0),
            LearningOptions(
              primaryColor,
              Icons.menu_book_sharp,
              "Morse Dictionary",
              "Improve your vocabulary with our built-in morse dictionary.",
              "/learn/dictionary",
            ),
            LearningOptions(
              Color(0xFF63676C),
              Icons.lyrics_outlined,
              "Practice Listening",
              "Improve your morse code listening skill with Morseify.",
              "/learn/listen",
            ),
          ],
        ),
      ),
    );
  }
}
