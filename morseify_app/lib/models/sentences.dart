// Data store for sentences
class Sentence {
  final int id;
  final String text;
  final String morseStr;

  Sentence({required this.id, required this.text, required this.morseStr});
}

// Sentences Array
List<Sentence> sentences = [
  Sentence(
    id: 0,
    text: "John is a wise man.",
    morseStr: ".--- --- .... -.  .. ...  .-  .-- .. ... .  -- .- -. .-.-.-",
  ),
  Sentence(
    id: 1,
    text: "Jack went to the gym.",
    morseStr:
        ".--- .- -.-. -.-   .-- . -. -   - ---   - .... .   --. -.-- -- .-.-.-",
  ),
  Sentence(
    id: 2,
    text: "Students went to the canteen.",
    morseStr:
        "... - ..- -.. . -. - ...   .-- . -. -   - ---   - .... .   -.-. .- -. - . . -. .-.-.-",
  ),
  Sentence(
    id: 3,
    text: "Hello, how are you?",
    morseStr:
        ".... . .-.. .-.. --- --..--    .... --- .--    .- .-. .  -.-- --- ..- ..--..",
  ),
  Sentence(
    id: 4,
    text: "Good morning, have a great day!",
    morseStr:
        "--. --- --- -..    -- --- .-. -. .. -. --. --..--    .... .- ...- .    .-    --. .-. . .- -    -.. .- -.-- -.-.--",
  ),
  Sentence(
    id: 5,
    text: "I love learning morse code.",
    morseStr:
        "..    .-.. --- ...- .    .-.. . .- .-. -. .. -. --.    -- --- .-. ... .    -.-. --- -.. . .-.-.-",
  ),
  Sentence(
    id: 6,
    text: "Thank you for your help.",
    morseStr:
        "- .... .- -. -.-    -.-- --- ..-    ..-. --- .-.    -.-- --- ..- .-.    .... . .-.. .--. .-.-.-",
  ),
  Sentence(
    id: 7,
    text: "Today is a beautiful day.",
    morseStr:
        "- --- -.. .- -.--    .. ...    .-    -... . .- ..- - .. ..-. ..- .-..    -.. .- -.-- .-.-.-",
  ),
  Sentence(
    id: 8,
    text: "Meeting at 3 pm sharp.",
    morseStr:
        "-- . . - .. -. --.    .- -    ...--    .--. --    ... .... .- .-. .--. .-.-.-",
  ),
  Sentence(
    id: 9,
    text: "Enjoy your meal.",
    morseStr: ". -. .--- --- -.--    -.-- --- ..- .-.    -- . .- .-.. .-.-.-",
  ),
  Sentence(
    id: 10,
    text: "See you later.",
    morseStr: "... . .    -.-- --- ..-    .-.. .- - . .-. .-.-.-",
  ),
];
