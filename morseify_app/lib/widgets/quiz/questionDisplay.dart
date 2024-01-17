// Question Display widget
import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/morse.dart';
import 'package:morseify_app/utilities/constants.dart';

class QuestionDisplay extends StatelessWidget {
  final int questionCount;
  final bool isAudioQuestion;
  final String questionText;
  final int correctAnswerCount;

  const QuestionDisplay({
    super.key,
    required this.questionCount,
    required this.isAudioQuestion,
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
          // header that keeps tracks of question count and correct answer count
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
          // actual question box (place where question or play button will appear)
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: (isAudioQuestion)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Listen to Morse and answer?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: heading,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("Play morse code..");
                              print(questionText);
                              playMorse(questionText);
                            },
                            icon: const Icon(Icons.play_arrow),
                          ),
                        ],
                      )
                    : Text(
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
