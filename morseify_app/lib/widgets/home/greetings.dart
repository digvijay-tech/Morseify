import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';

class Greetings extends StatelessWidget {
  const Greetings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 14.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to Morseify!",
            style: TextStyle(
              fontSize: heading,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Your Journey to Becoming a Morse Code Expert Starts Here!",
            style: TextStyle(
              fontSize: body,
            ),
          ),
        ],
      ),
    );
  }
}
