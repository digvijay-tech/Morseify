// Question Display widget
import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';

class QuestionDisplay extends StatelessWidget {
  final int questionCount;
  final String questionText;
  final int correctAnswerCount;

  const QuestionDisplay({
    super.key,
    required this.questionCount,
    required this.questionText,
    required this.correctAnswerCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Question $questionCount of 10",
                style: const TextStyle(fontSize: subheading),
              ),
              Chip(
                label: Text("$correctAnswerCount",
                    style: const TextStyle(fontSize: caption)),
                side: BorderSide.none,
                avatar: const Icon(
                  Icons.check_circle,
                  color: Color(0xFF27ae60),
                ),
                backgroundColor: const Color.fromARGB(119, 39, 174, 95),
              ),
            ],
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
