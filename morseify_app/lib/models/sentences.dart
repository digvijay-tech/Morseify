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
];
