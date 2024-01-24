// Welcome widget in Quiz view
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:morseify_app/utilities/constants.dart';

class WelcomeQuiz extends StatelessWidget {
  const WelcomeQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DefaultTextStyle(
                  style: const TextStyle(
                    fontFamily: secondaryFont,
                    color: Color(0xFFbdc3c7),
                    fontSize: heading,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        ".-.. . .- .-. -.", // Learn
                        speed: const Duration(milliseconds: 150),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Welcome to the Morseify Quiz Challenge!",
                  style: TextStyle(
                    fontSize: heading,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Become Morse Code Expert!",
                  style: TextStyle(
                    fontSize: subheading,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Are you ready to test your Morse code skills? Dive into our interactive quiz and challenge yourself! Each quiz is designed to enhance your understanding and speed in Morse code communication. Whether you're a beginner or a seasoned pro, these quizzes cater to all levels.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: body,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60.0,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, "/quiz/attempt");
              },
              icon: const Icon(
                Icons.play_arrow,
                color: baseLightColor,
              ),
              label: const Text(
                "Start Quiz!",
                style: TextStyle(
                  fontSize: subheading,
                  color: baseLightColor,
                ),
              ),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
