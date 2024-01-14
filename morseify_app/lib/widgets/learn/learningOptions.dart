import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';

// Learning Options for Navigation
class LearningOptions extends StatelessWidget {
  const LearningOptions(this.bgColor, this.optionIcon, this.optionTitle,
      this.optionBody, this.pathName,
      {super.key});

  // props
  final Color bgColor;
  final IconData optionIcon;
  final String optionTitle;
  final String optionBody;
  final String pathName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pathName);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 14.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Icon(
                optionIcon,
                size: 44.0,
                color: baseLightColor,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    optionTitle,
                    style: const TextStyle(
                      fontSize: heading,
                      color: baseLightColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    optionBody,
                    style: const TextStyle(
                      fontSize: body,
                      color: baseLightColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
