import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:morseify_app/utilities/constants.dart';
import 'package:morseify_app/utilities/morse.dart';

class DecodeForm extends StatefulWidget {
  const DecodeForm({super.key});

  @override
  State<DecodeForm> createState() => _DecodeFormState();
}

class _DecodeFormState extends State<DecodeForm> {
  // user input controllers
  bool isDisabled = true;
  bool isInputInvalid = false;
  String decodedText = "";
  final TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
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
                  children: [
                    SizedBox(
                      height: 200.0,
                      child: ListView(
                        children: [
                          Text(
                            decodedText,
                            style: const TextStyle(fontSize: subheading),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            // copying the result
                            // making copy to clip board work
                            Clipboard.setData(ClipboardData(text: decodedText));
                          },
                          icon: const Icon(Icons.copy),
                        ),
                        IconButton(
                          onPressed: () {
                            // clears the output
                            setState(() {
                              decodedText = "";
                            });
                          },
                          icon: const Icon(
                            Icons.clear,
                            size: 30.0,
                          ),
                        ),
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
                  // show only when morse code input is invalid
                  if (isInputInvalid)
                    const Text(
                      "Invalid Input, Please Enter Valid Morse Code!",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: body,
                      ),
                    ),

                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    controller: _inputController,
                    smartDashesType: SmartDashesType.disabled,
                    smartQuotesType: SmartQuotesType.disabled,
                    autocorrect: false,
                    enableSuggestions: false,
                    onChanged: (value) {
                      // disable convert button if input is empty
                      String userInput = value.trim();

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
                    maxLines: 4,
                    decoration: const InputDecoration(
                      hintText: "Enter each Morse word on a new line",
                      labelText: "Enter morse code..",
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
                        String morseInput = _inputController.text;

                        // removing '/' from morse string
                        morseInput = morseInput.replaceAll("/", "");

                        if (morseInput.isNotEmpty) {
                          if (isValidMorse(morseInput)) {
                            String decodedMorse = morseToText(morseInput);
                            setState(() {
                              decodedText = decodedMorse;
                              isInputInvalid = false;
                            });
                          } else {
                            setState(() {
                              decodedText = "";
                              isInputInvalid = true;
                            });
                          }
                        }
                      },
                      icon: const Icon(Icons.change_circle_outlined),
                      label: const Text(
                        "Decode Morse",
                        style: TextStyle(
                          color: baseLightColor,
                          fontSize: body,
                        ),
                      ),
                      style: ButtonStyle(
                        iconColor:
                            const MaterialStatePropertyAll(baseLightColor),
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
      ),
    );
  }
}
