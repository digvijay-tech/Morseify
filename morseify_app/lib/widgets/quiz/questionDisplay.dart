// Question Display widget
import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';

class QuestionDisplay extends StatelessWidget {
  final int questionIndex;
  final String questionText;

  const QuestionDisplay({
    super.key,
    required this.questionIndex,
    required this.questionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Question $questionIndex of 10",
            style: const TextStyle(fontSize: subheading),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  questionText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: heading,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
