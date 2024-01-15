import 'package:flutter/material.dart';
// import 'package:morseify_app/services/morseAudioService.dart';

import 'package:morseify_app/models/sentences.dart';
import 'package:morseify_app/utilities/constants.dart';
import 'package:morseify_app/utilities/morse.dart';

//
class ListeningControls extends StatefulWidget {
  const ListeningControls({super.key});

  @override
  State<ListeningControls> createState() => _ListeningControlsState();
}

class _ListeningControlsState extends State<ListeningControls> {
  // Creating a local AudioPlayer instance to dispose when widget dismounts

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < sentences.length; i++)
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0x8F525252)),
              ),
            ),
            child: ListTile(
              leading: IconButton(
                icon: const Icon(Icons.play_arrow),
                onPressed: () {
                  playMorse(sentences[i].morseStr);
                },
              ),
              title: Text(
                sentences[i].text,
              ),
              subtitle: Text(
                sentences[i].morseStr,
                style: const TextStyle(
                  fontSize: heading,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
