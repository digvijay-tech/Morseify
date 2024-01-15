// Morse Code Helper file
import 'package:audioplayers/audioplayers.dart';

// Globally defined AudioPlayer instance
final player = AudioPlayer();

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

// Convert morse code to text
String morseToText(String morseCode) {
  // Split Morse code into words using space, slash, or newline as separators
  final words = morseCode.split(RegExp(r' /|\s|/'));

  // Translate each word from Morse code to text
  final translatedWords = words.map((word) {
    // Split the word into Morse code characters (letters)
    final letters = word.split(' ');

    // Translate each Morse code letter to text
    final translatedLetters = letters.map((letter) {
      return morseCodeMap.entries
          .firstWhere((entry) => entry.value == letter,
              orElse: () => MapEntry('', ''))
          .key; // Find the key (text character) for the Morse code value
    }).join(); // Join letters to form a word

    return translatedLetters;
  }).join(' '); // Join words to form the full sentence

  return translatedWords;
}

// Morse Code Audio Service
void playMorse(String code) async {
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
}

// for verifying a valid morse code string
bool isValidMorse(String str) {
  // Regex to match valid Morse code characters and word separators
  final morsePattern = RegExp(r'^[.-]+|\/|(?:[.-]+(\s|$))+$');

  // Splitting the input into parts based on spaces
  final parts = str.trim().split(RegExp(r'\s+|\s*\/\s*'));

  // Check each part of the input against the pattern
  for (final part in parts) {
    if (!morsePattern.hasMatch(part)) {
      return false; // If any part doesn't match, the input is invalid
    }
  }

  return true; // All parts match the pattern, the input is valid Morse code
}
