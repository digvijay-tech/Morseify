// Data store for sentences
class Sentence {
  final int id;
  bool isPlaying;
  final String text;
  final String morseStr;

  Sentence({
    required this.id,
    required this.isPlaying,
    required this.text,
    required this.morseStr,
  });
}

// Sentences Array
List<Sentence> sentences = [
  Sentence(
    id: 0,
    isPlaying: false,
    text: "John is a wise man.",
    morseStr: ".--- --- .... -.  .. ...  .-  .-- .. ... .  -- .- -. .-.-.-",
  ),
  Sentence(
    id: 1,
    isPlaying: false,
    text: "Jack went to the gym.",
    morseStr:
        ".--- .- -.-. -.-   .-- . -. -   - ---   - .... .   --. -.-- -- .-.-.-",
  ),
  Sentence(
    id: 2,
    isPlaying: false,
    text: "Students went to the canteen.",
    morseStr:
        "... - ..- -.. . -. - ...   .-- . -. -   - ---   - .... .   -.-. .- -. - . . -. .-.-.-",
  ),
  Sentence(
    id: 3,
    isPlaying: false,
    text: "Hello, how are you?",
    morseStr:
        ".... . .-.. .-.. --- --..--    .... --- .--    .- .-. .  -.-- --- ..- ..--..",
  ),
  Sentence(
    id: 4,
    isPlaying: false,
    text: "Good morning, have a great day!",
    morseStr:
        "--. --- --- -..    -- --- .-. -. .. -. --. --..--    .... .- ...- .    .-    --. .-. . .- -    -.. .- -.-- -.-.--",
  ),
  Sentence(
    id: 5,
    isPlaying: false,
    text: "I love learning morse code.",
    morseStr:
        "..    .-.. --- ...- .    .-.. . .- .-. -. .. -. --.    -- --- .-. ... .    -.-. --- -.. . .-.-.-",
  ),
  Sentence(
    id: 6,
    isPlaying: false,
    text: "Thank you for your help.",
    morseStr:
        "- .... .- -. -.-    -.-- --- ..-    ..-. --- .-.    -.-- --- ..- .-.    .... . .-.. .--. .-.-.-",
  ),
  Sentence(
    id: 7,
    isPlaying: false,
    text: "Today is a beautiful day.",
    morseStr:
        "- --- -.. .- -.--    .. ...    .-    -... . .- ..- - .. ..-. ..- .-..    -.. .- -.-- .-.-.-",
  ),
  Sentence(
    id: 8,
    isPlaying: false,
    text: "Meeting at 3 pm sharp.",
    morseStr:
        "-- . . - .. -. --.    .- -    ...--    .--. --    ... .... .- .-. .--. .-.-.-",
  ),
  Sentence(
    id: 9,
    isPlaying: false,
    text: "Enjoy your meal.",
    morseStr: ". -. .--- --- -.--    -.-- --- ..- .-.    -- . .- .-.. .-.-.-",
  ),
  Sentence(
    id: 10,
    isPlaying: false,
    text: "See you later.",
    morseStr: "... . .    -.-- --- ..-    .-.. .- - . .-. .-.-.-",
  ),
];
