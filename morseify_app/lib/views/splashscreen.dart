// Splash Screen
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:morseify_app/utilities/constants.dart';
import 'package:morseify_app/views/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2000,
      splash: Column(
        children: [
          const Center(
            child: Text(
              "Morseify",
              style: TextStyle(
                fontFamily: secondaryFont,
                color: baseLightColor,
                fontSize: splash,
              ),
            ),
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontFamily: secondaryFont,
              color: baseLightColor,
              fontSize: heading,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  ".... ..", // hi
                  speed: const Duration(milliseconds: 150),
                ),
              ],
            ),
          ),
        ],
      ),
      nextScreen: const Home(),
      backgroundColor: primaryColor,
    );
  }
}
