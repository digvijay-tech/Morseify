// Quiz logic and controls
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:morseify_app/widgets/quiz/optionSerializer.dart';
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

  // new questionbank with shuffled options
  List<Question> questionsWithShuffledOptions = [];

  // picked question index
  int pickedIndex = 0;

  // tracking number of questions asked/answered/skipped
  int questionCount = 0;
  int correctAnswerCount = 0;
  bool showResult = false;
  bool isLoading = false;
  bool isDisabled = true;

  // tracking end of the game
  bool quizEnded = false;

  // tracking selected option
  int selectedOptionIndex = -1; // -1 indicates no selection

  // randomly pick question from questions list
  int pickQuestion(List<Question> list) {
    if (list.isNotEmpty) {
      int randomIndex = random.nextInt(list.length);

      return randomIndex;
    }

    // reurning -1 to indicate problem
    return -1;
  }

  // shuffle options in the question bank instance
  void shuffleAllOptions() {
    for (int i = 0; i < questions.length; i++) {
      questions[i].options.shuffle();
    }
  }

  // processing correct answers
  void confirmAndNext() {
    // proceeding only if user selects any option
    if (selectedOptionIndex != -1 && !isDisabled) {
      // show loading state on button
      setState(() {
        isLoading = true;
        isDisabled = true;
      });

      // increment question count
      questionCount += 1;

      // getting option index
      int optionIndex = questions[pickedIndex]
          .options
          .indexWhere((option) => option.optionId == selectedOptionIndex);

      // verify correct answer
      if (questions[pickedIndex].correctOptionId ==
          questions[pickedIndex].options[optionIndex].optionId) {
        setState(() {
          // increament on eac correct choice
          correctAnswerCount += 1;

          // show result to the user
          showResult = true;
        });
      } else {
        setState(() {
          // show result to the user
          showResult = true;
        });
      }

      // check end condition before proceeding furthur
      if (questionCount == 11) {
        endQuiz();
      } else {
        // proceed to next question
        Timer(const Duration(milliseconds: 500), () {
          setState(() {
            // reset selection
            selectedOptionIndex = -1;

            // hide result
            showResult = false;

            // change question
            pickedIndex = pickQuestion(questions);

            // end loading state on button
            isLoading = false;
          });
        });
      }
    }
  }

  // end game
  void endQuiz() {
    // reset everything
    setState(() {
      quizEnded = true;
      selectedOptionIndex = -1;
      showResult = true;
      isDisabled = true;
      isLoading = false;
    });
  }

  // set random index to 1st questino when quiz starts
  @override
  void initState() {
    super.initState();

    setState(() {
      questionCount = 1;
      pickedIndex = pickQuestion(questions);

      // shuffling all the options for all questions
      shuffleAllOptions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
          child: (quizEnded)
              ? QuestionDisplay(
                  questionCount: 10, // default value (always fixed)
                  isAudioQuestion: false, // default value (always fixed)
                  questionText:
                      "You scored $correctAnswerCount/10. Thanks for playing.\n... . .   -.-- --- ..-   .- --. .- .. -. -.-.--",
                  correctAnswerCount: correctAnswerCount,
                )
              : QuestionDisplay(
                  questionCount: questionCount,
                  isAudioQuestion: questions[pickedIndex].isAudioQuestion,
                  questionText: questions[pickedIndex].question,
                  correctAnswerCount: correctAnswerCount,
                ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("Only one correct answer:"),

                const SizedBox(height: 8.0),

                // show correct as well as the incorrect options
                if (showResult)
                  for (int i = 0;
                      i < questions[pickedIndex].options.length;
                      i++)
                    ListTile(
                      // post answer view user can't select anything
                      onTap: null, // always remain disabled
                      enabled: false, // always remain disabled
                      title: (selectedOptionIndex ==
                              questions[pickedIndex].options[i].optionId)
                          ? OptionSerializer(index: i, isChosen: true)
                          : OptionSerializer(index: i, isChosen: false),
                      subtitle: Text(
                        questions[pickedIndex].options[i].option,
                        style: (questions[pickedIndex].isAudioQuestion)
                            ? const TextStyle(fontSize: body)
                            : const TextStyle(fontSize: subheading),
                      ),
                      trailing: (questions[pickedIndex].correctOptionId ==
                              questions[pickedIndex].options[i].optionId)
                          ? const Icon(Icons.check_circle)
                          : const Icon(Icons.cancel),
                    ),

                // active selection field
                if (!showResult)
                  for (int i = 0;
                      i < questions[pickedIndex].options.length;
                      i++)
                    ListTile(
                      onTap: () {
                        setState(() {
                          // set selected index
                          selectedOptionIndex =
                              questions[pickedIndex].options[i].optionId;

                          // enable button
                          isDisabled = false;
                        });
                      },
                      enabled: true,
                      title: OptionSerializer(
                        index: i,
                        isChosen: false,
                      ),
                      subtitle: Text(
                        questions[pickedIndex].options[i].option,
                        style: (questions[pickedIndex].isAudioQuestion)
                            ? const TextStyle(fontSize: body)
                            : const TextStyle(fontSize: subheading),
                      ),
                      trailing: (selectedOptionIndex ==
                              questions[pickedIndex].options[i].optionId)
                          ? const Icon(Icons.check_circle)
                          : const Icon(Icons.circle_outlined),
                    ),

                const SizedBox(height: 6.0),

                // Next Button
                (!quizEnded)
                    ? ElevatedButton(
                        onPressed: confirmAndNext,
                        style: (isDisabled)
                            ? const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.grey),
                                splashFactory: NoSplash.splashFactory,
                              )
                            : const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(primaryColor),
                              ),
                        child: (isLoading)
                            ? const CircularProgressIndicator.adaptive()
                            : const Text(
                                "Confirm & Next",
                                style: TextStyle(color: baseLightColor),
                              ),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/");
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(primaryColor),
                        ),
                        child: const Text(
                          "Exit",
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
