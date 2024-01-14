import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 14.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/encode');
                  },
                  child: Container(
                    height: 200.0,
                    margin: const EdgeInsets.all(4.0),
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.token,
                          size: 42.0,
                          color: baseLightColor,
                        ),
                        Text(
                          "Encode",
                          style: TextStyle(
                            fontSize: subheading,
                            color: baseLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Convert text into morse code",
                          style: TextStyle(
                            fontSize: body,
                            color: baseLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/decode');
                  },
                  child: Container(
                    height: 200.0,
                    margin: const EdgeInsets.all(4.0),
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFABBA1B),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.notes,
                          size: 42.0,
                          color: baseLightColor,
                        ),
                        Text(
                          "Decode",
                          style: TextStyle(
                            fontSize: subheading,
                            color: baseLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Convert morse code into text",
                          style: TextStyle(
                            fontSize: body,
                            color: baseLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/learn');
                  },
                  child: Container(
                    height: 200.0,
                    margin: const EdgeInsets.all(4.0),
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDE8E33),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.school,
                          size: 42.0,
                          color: baseLightColor,
                        ),
                        Text(
                          "Learn",
                          style: TextStyle(
                            fontSize: subheading,
                            color: baseLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Learn morse code from scratch to advance",
                          style: TextStyle(
                            fontSize: body,
                            color: baseLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/quiz');
                  },
                  child: Container(
                    height: 200.0,
                    margin: const EdgeInsets.all(4.0),
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF63676C),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.precision_manufacturing_rounded,
                          size: 42.0,
                          color: baseLightColor,
                        ),
                        Text(
                          "Quiz",
                          style: TextStyle(
                            fontSize: subheading,
                            color: baseLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Practice your morse skills",
                          style: TextStyle(
                            fontSize: body,
                            color: baseLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
