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

// converting text to morse code
String textToMorse(String text) {
  // morse code with '?' impurities
  String rawMorseCode = text.toUpperCase().split('').map((String letter) {
    return morseCodeMap[letter] ?? '?';
  }).join(' ');

  // filtering impurities
  String filteredMorseCode = rawMorseCode.replaceAll("?", "");

  return filteredMorseCode;
}

// convert morse code to text
String morseToText(String morseCode) {
  // split Morse code into words using space, slash, or newline as separators
  final words = morseCode.split(RegExp(r' /|\s|/'));

  // translate each word from Morse code to text
  final translatedWords = words.map((word) {
    // split the word into Morse code characters (letters)
    final letters = word.split(' ');

    // translate each Morse code letter to text
    final translatedLetters = letters.map((letter) {
      return morseCodeMap.entries
          .firstWhere((entry) => entry.value == letter,
              orElse: () => MapEntry('', ''))
          .key; // finds the key (text character) for the Morse code value
    }).join(); // join letters to form a word

    return translatedLetters;
  }).join(' '); // join words to form the full sentence

  return translatedWords;
}

// for verifying a valid morse code string
bool isValidMorse(String str) {
  // Regex to match valid Morse code characters and word separators
  final morsePattern = RegExp(r'^[.-]+|\/|(?:[.-]+(\s|$))+$');

  // splitting the input into parts based on spaces
  final parts = str.trim().split(RegExp(r'\s+|\s*\/\s*'));

  // checks each part of the input with the pattern
  for (final part in parts) {
    if (!morsePattern.hasMatch(part)) {
      return false; // if any part doesn't match, the input is invalid
    }
  }

  // everything is good
  return true;
}
