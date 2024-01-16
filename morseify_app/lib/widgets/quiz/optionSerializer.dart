import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';

// for serializing the option number/index while rendering
class OptionSerializer extends StatelessWidget {
  final int index;
  final bool isChosen;

  const OptionSerializer({
    super.key,
    required this.index,
    required this.isChosen,
  });

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return Text(
          (isChosen) ? "Option A:    (your choice)" : "Option A",
          style: const TextStyle(fontSize: caption),
        );
      case 1:
        return Text(
          (isChosen) ? "Option B:    (your choice)" : "Option B",
          style: const TextStyle(fontSize: caption),
        );
      case 2:
        return Text(
          (isChosen) ? "Option C:    (your choice)" : "Option C",
          style: const TextStyle(fontSize: caption),
        );
      case 3:
        return Text(
          (isChosen) ? "Option D:    (your choice)" : "Option D",
          style: const TextStyle(fontSize: caption),
        );
      default:
        return const Text(
          "Unknown Error",
          style: TextStyle(fontSize: caption),
        );
    }
  }
}
