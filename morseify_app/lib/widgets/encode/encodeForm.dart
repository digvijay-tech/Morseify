import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:morseify_app/utilities/constants.dart';
import 'package:morseify_app/utilities/morse.dart';
import 'package:morseify_app/services/morseAudioService.dart';

class EncodeForm extends StatefulWidget {
  const EncodeForm({super.key});

  @override
  State<EncodeForm> createState() => _EncodeFormState();
}

class _EncodeFormState extends State<EncodeForm> {
  // user input controller
  final _inputController = TextEditingController();
  bool isDisabled = true;
  bool isMicDisabled = true;
  String morseString = '';

  // cleaning up the controller when widget gets disposed
  @override
  void dispose() {
    MorseAudioService.stop();
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          Card(
            elevation: 0,
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 200.0,
                    child: ListView(
                      children: [
                        Text(
                          morseString,
                          style: const TextStyle(fontSize: heading),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (morseString.isNotEmpty) {
                            // making copy to clip board work
                            Clipboard.setData(ClipboardData(text: morseString));
                          }
                        },
                        icon: const Icon(Icons.copy),
                      ),
                      IconButton(
                        onPressed: () {
                          if (morseString.isNotEmpty) {
                            MorseAudioService.playMorse(morseString);
                          }
                        },
                        icon: Icon(
                          (isMicDisabled) ? Icons.mic_off : Icons.mic,
                          size: 30.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // stop morse audio
                          MorseAudioService.stop();

                          // reset display
                          setState(() {
                            morseString = "";
                            isMicDisabled = true;
                          });
                        },
                        icon: const Icon(
                          Icons.clear,
                          size: 30.0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _inputController,
                  onChanged: (value) {
                    // disable convert button if input is empty
                    String userInput = value.trim().toLowerCase();

                    if (userInput.isNotEmpty) {
                      setState(() {
                        isDisabled = false;
                      });
                    } else {
                      setState(() {
                        isDisabled = true;
                      });
                    }
                  },
                  maxLength: 300,
                  maxLines: 4,
                  decoration: const InputDecoration(
                    labelText: "Write something..",
                    floatingLabelStyle: TextStyle(color: primaryColor),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  height: 50.0,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      String userInput =
                          _inputController.text.trim().toLowerCase();
                      if (userInput.isNotEmpty) {
                        setState(() {
                          String morseCode = textToMorse(userInput);
                          morseString = morseCode;
                          isMicDisabled = false;
                        });
                      }
                    },
                    icon: const Icon(Icons.change_circle_outlined),
                    label: const Text(
                      "Encode to Morse",
                      style: TextStyle(
                        color: baseLightColor,
                        fontSize: body,
                      ),
                    ),
                    style: ButtonStyle(
                      iconColor: const MaterialStatePropertyAll(baseLightColor),
                      splashFactory: (isDisabled)
                          ? NoSplash.splashFactory
                          : InkRipple.splashFactory,
                      backgroundColor: (isDisabled)
                          ? MaterialStatePropertyAll(Colors.grey[600])
                          : const MaterialStatePropertyAll(primaryColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
