// Quiz logic and controls
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:morseify_app/widgets/quiz/questionDisplay.dart';
import 'package:morseify_app/utilities/constants.dart';
import 'package:morseify_app/models/questions.dart';

class QuizControls extends StatefulWidget {
  const QuizControls({super.key});

  @override
  State<QuizControls> createState() => _QuizControlsState();
}

class _QuizControlsState extends State<QuizControls> {
  // random instance
  final random = Random();

  // get all question
  final List<Question> questions = questionBank;

  // picked question index
  int pickedIndex = 0;

  // randomly pick question from questions list
  int pickQuestion(List<Question> list) {
    if (list.isNotEmpty) {
      int randomIndex = random.nextInt(list.length);
      print(randomIndex);
      return randomIndex;
    }

    // reurning -1 to indicate problem
    return -1;
  }

  // set random index to 1st questino when quiz starts
  @override
  void initState() {
    super.initState();

    setState(() {
      pickedIndex = pickQuestion(questions);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
          child: QuestionDisplay(
            questionIndex: questions[pickedIndex].id,
            questionText: questions[pickedIndex].question,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Only one correct answer:"),
                    TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(
                          Color(0x5F8E8E8E),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xB8A8A7A7),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Text(
                            "Skip",
                            style: TextStyle(color: baseLightColor),
                          ),
                          SizedBox(width: 4.0),
                          Icon(
                            Icons.double_arrow,
                            size: body,
                            color: baseLightColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                for (int i = 0; i < questions[pickedIndex].options.length; i++)
                  ListTile(
                    onTap: () {},
                    title: Text(
                      "Option ${questions[pickedIndex].options[i].optionId}",
                      style: const TextStyle(fontSize: caption),
                    ),
                    subtitle: Text(
                      questions[pickedIndex].options[i].option,
                      style: const TextStyle(fontSize: 30.0),
                    ),
                    trailing: const Icon(Icons.circle_outlined),
                  ),

                const SizedBox(height: 6.0),

                // Next Button
                ElevatedButton(
                  onPressed: () {
                    var temp = pickQuestion(questions);
                    print(temp);
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(primaryColor),
                  ),
                  child: const Text(
                    "Confirm & Next",
                    style: TextStyle(color: baseLightColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
