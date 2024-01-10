// Morse Code Helper file
import 'package:audioplayers/audioplayers.dart';

// Morse Map
Map<String, String> morseCodeMap = {
  'A': '.-',
  'B': '-...',
  'C': '-.-.',
  'D': '-..',
  'E': '.',
  'F': '..-.',
  'G': '--.',
  'H': '....',
  'I': '..',
  'J': '.---',
  'K': '-.-',
  'L': '.-..',
  'M': '--',
  'N': '-.',
  'O': '---',
  'P': '.--.',
  'Q': '--.-',
  'R': '.-.',
  'S': '...',
  'T': '-',
  'U': '..-',
  'V': '...-',
  'W': '.--',
  'X': '-..-',
  'Y': '-.--',
  'Z': '--..',
  '1': '.----',
  '2': '..---',
  '3': '...--',
  '4': '....-',
  '5': '.....',
  '6': '-....',
  '7': '--...',
  '8': '---..',
  '9': '----.',
  '0': '-----',
  ' ': '/ ',
  '.': '.-.-.-',
  ',': '--..--',
  '?': '..--..',
  '\'': '.----.',
  '!': '-.-.--',
  '/': '-..-.',
  '(': '-.--.',
  ')': '-.--.-',
  '&': '.-...',
  ':': '---...',
  ';': '-.-.-.',
  '=': '-...-',
  '+': '.-.-.',
  '-': '-....-',
  '_': '..--.-',
  '\"': '.-..-.',
  '\$': '...-..-',
  '@': '.--.-.',
};

// Converts text to morse code
String textToMorse(String text) {
  // morse code with '?' impurities
  String rawMorseCode = text.toUpperCase().split('').map((String letter) {
    return morseCodeMap[letter] ?? '?';
  }).join(' ');

  // filtering impurities
  String filteredMorseCode = rawMorseCode.replaceAll("?", "");

  return filteredMorseCode;
}

// For playing morse code
void playMorse(String code) async {
  final player = AudioPlayer();
  const dotDuration = 100;

  for (int i = 0; i < code.length; i++) {
    if (code[i] == ".") {
      await player.play(AssetSource("audios/dot.mp3"));
      await Future.delayed(const Duration(milliseconds: 3 * dotDuration));
    } else if (code[i] == "-") {
      await player.play(AssetSource("audios/dash.mp3"));
      await Future.delayed(const Duration(milliseconds: 4 * dotDuration));
    } else if (code[i] == " ") {
      // Pause for space (word separator)
      await Future.delayed(const Duration(milliseconds: 5 * dotDuration));
    }
  }

  player.dispose();
}
