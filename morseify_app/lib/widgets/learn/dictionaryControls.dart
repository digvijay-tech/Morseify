import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';
import 'package:morseify_app/utilities/morse.dart';
import 'package:morseify_app/services/morseAudioService.dart';

// Filterable Dictionary ListView
class DictionaryControls extends StatefulWidget {
  const DictionaryControls({super.key});

  @override
  State<DictionaryControls> createState() => _DictionaryControlsState();
}

class _DictionaryControlsState extends State<DictionaryControls> {
  // controllers
  final _searchInputController = TextEditingController();

  Map<String, String> displayMorseCodes = {};
  Map<String, String> allMorseCodes = morseCodeMap;

  // filter function
  void filterResults(value) {
    // filtering morse codes based on input
    final query = value.toUpperCase();
    Map<String, String> filteredMap = {};

    allMorseCodes.forEach((key, value) {
      if (key.contains(query)) {
        filteredMap[key] = value;
      }
    });

    setState(() {
      displayMorseCodes = filteredMap;
    });
  }

  @override
  void initState() {
    super.initState();
    // initially, displayMorseCodes will show all entries
    displayMorseCodes = Map<String, String>.from(allMorseCodes);
  }

  @override
  void dispose() {
    // stops playing when user leaves the page
    MorseAudioService.stop();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: TextField(
            controller: _searchInputController,
            onChanged: filterResults,
            maxLines: 1,
            maxLength: 1,
            decoration: const InputDecoration(
              hintText: "Search a character..",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              counterText: "",
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              children: [
                if (displayMorseCodes.isNotEmpty)
                  for (final entry in displayMorseCodes.entries)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0x8F525252)),
                        ),
                      ),
                      child: ListTile(
                        onTap: () {
                          // playing morse code
                          MorseAudioService.playMorse(entry.value);
                        },
                        title: Text(
                          "${entry.key}     ${entry.value}",
                          style: const TextStyle(
                            fontSize: heading,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: const Icon(Icons.volume_up_rounded),
                      ),
                    ),
                if (displayMorseCodes.isEmpty)
                  const Center(
                    child: Text("No Match Found"),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
