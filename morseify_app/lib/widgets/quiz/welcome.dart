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
                  "Become Morse Code Expert!",
                  style: TextStyle(
                    fontSize: heading,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Welcome to Morseify's Quiz!",
                  style: TextStyle(
                    fontSize: subheading,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.",
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
