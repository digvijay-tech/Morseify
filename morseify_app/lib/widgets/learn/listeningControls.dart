import 'package:flutter/material.dart';
import 'package:morseify_app/models/sentences.dart';
import 'package:morseify_app/utilities/constants.dart';
import 'package:audioplayers/audioplayers.dart';

//
class ListeningControls extends StatefulWidget {
  const ListeningControls({super.key});

  @override
  State<ListeningControls> createState() => _ListeningControlsState();
}

class _ListeningControlsState extends State<ListeningControls> {
  // Creating a local AudioPlayer instance to dispose when widget dismounts
  final player = AudioPlayer();
  bool shouldStop = false;
  bool isDisposed = false;

  // dispose handler
  @override
  void dispose() {
    player.stop().then((_) {
      player.dispose();
    });

    // play icon reset
    for (int i = 0; i < sentences.length; i++) {
      sentences[i].isPlaying = false;
    }

    // chaning flag to disposed
    isDisposed = true;
    super.dispose();
  }

  // local playMorse function
  Future<void> playMorse(String code, int index, int duration) async {
    shouldStop = false;
    const dotDuration = 100;

    for (int i = 0; i < code.length; i++) {
      if (shouldStop) {
        break; // stops playing
      }

      // checking if the widget is already disposed
      if (isDisposed) return;

      if (code[i] == ".") {
        await player.play(AssetSource("audios/dot.mp3"));
        await Future.delayed(const Duration(milliseconds: 3 * dotDuration));
        duration = duration - 1;
      } else if (code[i] == "-") {
        await player.play(AssetSource("audios/dash.mp3"));
        await Future.delayed(const Duration(milliseconds: 4 * dotDuration));
        duration = duration - 1;
      } else if (code[i] == " ") {
        // Pause for space (word separator)
        await Future.delayed(const Duration(milliseconds: 5 * dotDuration));
        duration = duration - 1;
      }

      // changing the icon back to play when duration is 0 or audio finished playing
      if (duration == 0) {
        setState(() {
          sentences[index].isPlaying = false;
        });
      }
    }

    // stop playing
    if (shouldStop) {
      await player.stop();
    }
  }

  // local function for handling stop
  void stopPlaying() async {
    shouldStop = true;
    await player.stop();
  }

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
                icon: (!sentences[i].isPlaying)
                    ? const Icon(Icons.play_arrow)
                    : const Icon(Icons.stop),
                onPressed: () {
                  if (!sentences[i].isPlaying) {
                    // sentence index to track audio
                    playMorse(
                      sentences[i].morseStr,
                      i,
                      sentences[i].morseStr.length,
                    );
                    setState(() {
                      sentences[i].isPlaying = true;
                    });
                  } else {
                    stopPlaying();
                    setState(() {
                      sentences[i].isPlaying = false;
                    });
                  }
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
