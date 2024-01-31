// Question model and question bank

// options class for custom List datatype
class Options {
  final int optionId;
  final String option;

  Options({
    required this.optionId,
    required this.option,
  });
}

// Question model
class Question {
  final int id;
  final bool isAudioQuestion;
  final String question;
  final List<Options> options;
  final int correctOptionId;
  final String correctOption;

  Question({
    required this.id,
    required this.isAudioQuestion,
    required this.question,
    required this.options,
    required this.correctOptionId,
    required this.correctOption,
  });
}

// Questions Array
List<Question> questionBank = [
  // text based questions (Text -> Morse)
  Question(
    id: 1,
    isAudioQuestion: false,
    question: "What is Morse Code representation of A ?",
    options: [
      Options(optionId: 1, option: "..-."),
      Options(optionId: 2, option: "..-"),
      Options(optionId: 3, option: ".-"),
      Options(optionId: 4, option: "."),
    ],
    correctOptionId: 3,
    correctOption: ".-",
  ),
  Question(
    id: 2,
    isAudioQuestion: false,
    question: "What is Morse Code representation of B ?",
    options: [
      Options(optionId: 1, option: "-..."),
      Options(optionId: 2, option: ".---"),
      Options(optionId: 3, option: "--"),
      Options(optionId: 4, option: "-."),
    ],
    correctOptionId: 1,
    correctOption: "-...",
  ),
  Question(
    id: 3,
    isAudioQuestion: false,
    question: "What is Morse Code representation of C ?",
    options: [
      Options(optionId: 1, option: ".."),
      Options(optionId: 2, option: "-.-."),
      Options(optionId: 3, option: "--"),
      Options(optionId: 4, option: "...."),
    ],
    correctOptionId: 2,
    correctOption: "-.-.",
  ),
  Question(
    id: 4,
    isAudioQuestion: false,
    question: "What is Morse Code representation of D ?",
    options: [
      Options(optionId: 1, option: "-.."),
      Options(optionId: 2, option: ".."),
      Options(optionId: 3, option: "-"),
      Options(optionId: 4, option: ".--."),
    ],
    correctOptionId: 1,
    correctOption: "-..",
  ),
  Question(
    id: 5,
    isAudioQuestion: false,
    question: "What is Morse Code representation of E ?",
    options: [
      Options(optionId: 1, option: ".-.."),
      Options(optionId: 2, option: ".-."),
      Options(optionId: 3, option: "."),
      Options(optionId: 4, option: "---"),
    ],
    correctOptionId: 3,
    correctOption: ".",
  ),
  Question(
    id: 6,
    isAudioQuestion: false,
    question: "What is Morse Code representation of F ?",
    options: [
      Options(optionId: 1, option: ".-"),
      Options(optionId: 2, option: "-..."),
      Options(optionId: 3, option: "-.."),
      Options(optionId: 4, option: "..-."),
    ],
    correctOptionId: 4,
    correctOption: "..-.",
  ),
  Question(
    id: 7,
    isAudioQuestion: false,
    question: "What is Morse Code representation of G ?",
    options: [
      Options(optionId: 1, option: "-"),
      Options(optionId: 2, option: "-.."),
      Options(optionId: 3, option: "--."),
      Options(optionId: 4, option: ".-."),
    ],
    correctOptionId: 3,
    correctOption: "--.",
  ),
  Question(
    id: 8,
    isAudioQuestion: false,
    question: "What is Morse Code representation of H ?",
    options: [
      Options(optionId: 1, option: '.--'),
      Options(optionId: 2, option: '....'),
      Options(optionId: 3, option: '--'),
      Options(optionId: 4, option: '-.')
    ],
    correctOptionId: 2,
    correctOption: "....",
  ),
  Question(
    id: 9,
    isAudioQuestion: false,
    question: "What is Morse Code representation of I ?",
    options: [
      Options(optionId: 1, option: '..'),
      Options(optionId: 2, option: '.--.'),
      Options(optionId: 3, option: '.---'),
      Options(optionId: 4, option: '--.-')
    ],
    correctOptionId: 1,
    correctOption: "..",
  ),
  Question(
    id: 10,
    isAudioQuestion: false,
    question: "What is Morse Code representation of J ?",
    options: [
      Options(optionId: 1, option: '....'),
      Options(optionId: 2, option: '-..'),
      Options(optionId: 3, option: '.---'),
      Options(optionId: 4, option: '-..-')
    ],
    correctOptionId: 3,
    correctOption: ".---",
  ),
  Question(
    id: 11,
    isAudioQuestion: false,
    question: "What is Morse Code representation of K ?",
    options: [
      Options(optionId: 1, option: '....'),
      Options(optionId: 2, option: '-..'),
      Options(optionId: 3, option: '.---'),
      Options(optionId: 4, option: '-.-')
    ],
    correctOptionId: 4,
    correctOption: "-.-",
  ),
  Question(
    id: 12,
    isAudioQuestion: false,
    question: "What is Morse Code representation of L ?",
    options: [
      Options(optionId: 1, option: '.-..'),
      Options(optionId: 2, option: '...'),
      Options(optionId: 3, option: '.--.'),
      Options(optionId: 4, option: '-.--')
    ],
    correctOptionId: 1,
    correctOption: ".-..",
  ),
  Question(
    id: 13,
    isAudioQuestion: false,
    question: "What is Morse Code representation of M ?",
    options: [
      Options(optionId: 1, option: '-..'),
      Options(optionId: 2, option: '--'),
      Options(optionId: 3, option: '..-.'),
      Options(optionId: 4, option: '---')
    ],
    correctOptionId: 2,
    correctOption: "--",
  ),
  Question(
    id: 14,
    isAudioQuestion: false,
    question: "What is Morse Code representation of N ?",
    options: [
      Options(optionId: 1, option: '...'),
      Options(optionId: 2, option: '-'),
      Options(optionId: 3, option: '..--'),
      Options(optionId: 4, option: '-.')
    ],
    correctOptionId: 4,
    correctOption: "-.",
  ),
  Question(
    id: 15,
    isAudioQuestion: false,
    question: "What is Morse Code representation of O ?",
    options: [
      Options(optionId: 1, option: '..-'),
      Options(optionId: 2, option: '---'),
      Options(optionId: 3, option: '.--'),
      Options(optionId: 4, option: '-.-.')
    ],
    correctOptionId: 2,
    correctOption: "---",
  ),
  Question(
    id: 16,
    isAudioQuestion: false,
    question: "What is Morse Code representation of P ?",
    options: [
      Options(optionId: 1, option: '.-..'),
      Options(optionId: 2, option: '--.'),
      Options(optionId: 3, option: '.--.'),
      Options(optionId: 4, option: '-..-.')
    ],
    correctOptionId: 3,
    correctOption: ".--.",
  ),
  Question(
    id: 17,
    isAudioQuestion: false,
    question: "What is Morse Code representation of Q ?",
    options: [
      Options(optionId: 1, option: '.--..'),
      Options(optionId: 2, option: '-...'),
      Options(optionId: 3, option: '--..'),
      Options(optionId: 4, option: '--.-')
    ],
    correctOptionId: 4,
    correctOption: "--.-",
  ),
  Question(
    id: 18,
    isAudioQuestion: false,
    question: "What is Morse Code representation of R ?",
    options: [
      Options(optionId: 1, option: '.-.'),
      Options(optionId: 2, option: '..-'),
      Options(optionId: 3, option: '-.'),
      Options(optionId: 4, option: '.-')
    ],
    correctOptionId: 1,
    correctOption: ".-.",
  ),
  Question(
    id: 19,
    isAudioQuestion: false,
    question: "What is Morse Code representation of S ?",
    options: [
      Options(optionId: 1, option: '---'),
      Options(optionId: 2, option: '...'),
      Options(optionId: 3, option: '-..'),
      Options(optionId: 4, option: '-.-')
    ],
    correctOptionId: 2,
    correctOption: "...",
  ),
  Question(
    id: 20,
    isAudioQuestion: false,
    question: "What is Morse Code representation of T ?",
    options: [
      Options(optionId: 1, option: '-'),
      Options(optionId: 2, option: '..'),
      Options(optionId: 3, option: '--.'),
      Options(optionId: 4, option: '-..-')
    ],
    correctOptionId: 1,
    correctOption: "-",
  ),
  Question(
    id: 21,
    isAudioQuestion: false,
    question: "What is Morse Code representation of U ?",
    options: [
      Options(optionId: 1, option: '--.'),
      Options(optionId: 2, option: '-..'),
      Options(optionId: 3, option: '..-'),
      Options(optionId: 4, option: '-..-.')
    ],
    correctOptionId: 3,
    correctOption: "..-",
  ),
  Question(
    id: 22,
    isAudioQuestion: false,
    question: "What is Morse Code representation of V ?",
    options: [
      Options(optionId: 1, option: '-.-.'),
      Options(optionId: 2, option: '...-'),
      Options(optionId: 3, option: '..-.'),
      Options(optionId: 4, option: '..--.')
    ],
    correctOptionId: 2,
    correctOption: "...-",
  ),
  Question(
    id: 23,
    isAudioQuestion: false,
    question: "What is Morse Code representation of W ?",
    options: [
      Options(optionId: 1, option: '-.--'),
      Options(optionId: 2, option: '..-.'),
      Options(optionId: 3, option: '.--'),
      Options(optionId: 4, option: '--.')
    ],
    correctOptionId: 3,
    correctOption: ".--",
  ),
  Question(
    id: 24,
    isAudioQuestion: false,
    question: "What is Morse Code representation of X ?",
    options: [
      Options(optionId: 1, option: '..--'),
      Options(optionId: 2, option: '..-.'),
      Options(optionId: 3, option: '.--.'),
      Options(optionId: 4, option: '-..-')
    ],
    correctOptionId: 4,
    correctOption: "-..-",
  ),
  Question(
    id: 25,
    isAudioQuestion: false,
    question: "What is Morse Code representation of Y ?",
    options: [
      Options(optionId: 1, option: '...-'),
      Options(optionId: 2, option: '-.--'),
      Options(optionId: 3, option: '.-..'),
      Options(optionId: 4, option: '..--')
    ],
    correctOptionId: 2,
    correctOption: "-.--",
  ),
  Question(
    id: 26,
    isAudioQuestion: false,
    question: "What is Morse Code representation of Z ?",
    options: [
      Options(optionId: 1, option: '.-.-'),
      Options(optionId: 2, option: '..--'),
      Options(optionId: 3, option: '--..'),
      Options(optionId: 4, option: '.-..')
    ],
    correctOptionId: 3,
    correctOption: "--..",
  ),
  Question(
    id: 27,
    isAudioQuestion: false,
    question: "What is Morse Code representation of 0 ?",
    options: [
      Options(optionId: 1, option: '-----'),
      Options(optionId: 2, option: '...--'),
      Options(optionId: 3, option: '.....'),
      Options(optionId: 4, option: '---..')
    ],
    correctOptionId: 1,
    correctOption: "-----",
  ),
  Question(
    id: 28,
    isAudioQuestion: false,
    question: "What is Morse Code representation of 1 ?",
    options: [
      Options(optionId: 1, option: '-----'),
      Options(optionId: 2, option: '.----'),
      Options(optionId: 3, option: '----.'),
      Options(optionId: 4, option: '....-')
    ],
    correctOptionId: 2,
    correctOption: ".----",
  ),
  Question(
    id: 29,
    isAudioQuestion: false,
    question: "What is Morse Code representation of 2 ?",
    options: [
      Options(optionId: 1, option: '--...'),
      Options(optionId: 2, option: '-....'),
      Options(optionId: 3, option: '..---'),
      Options(optionId: 4, option: '..--.')
    ],
    correctOptionId: 3,
    correctOption: "..---",
  ),
  Question(
    id: 30,
    isAudioQuestion: false,
    question: "What is Morse Code representation of 3 ?",
    options: [
      Options(optionId: 1, option: '--...'),
      Options(optionId: 2, option: '--.-'),
      Options(optionId: 3, option: '..---'),
      Options(optionId: 4, option: '...--')
    ],
    correctOptionId: 4,
    correctOption: "...--",
  ),
  Question(
    id: 31,
    isAudioQuestion: false,
    question: "What is Morse Code representation of 4 ?",
    options: [
      Options(optionId: 1, option: '--...'),
      Options(optionId: 2, option: '.----'),
      Options(optionId: 3, option: '...--'),
      Options(optionId: 4, option: '....-')
    ],
    correctOptionId: 4,
    correctOption: "....-",
  ),
  Question(
    id: 32,
    isAudioQuestion: false,
    question: "What is Morse Code representation of 5 ?",
    options: [
      Options(optionId: 1, option: '--...'),
      Options(optionId: 2, option: '.----'),
      Options(optionId: 3, option: '...--'),
      Options(optionId: 4, option: '.....')
    ],
    correctOptionId: 4,
    correctOption: ".....",
  ),
  Question(
    id: 33,
    isAudioQuestion: false,
    question: "What is Morse Code representation of 6 ?",
    options: [
      Options(optionId: 1, option: '-....'),
      Options(optionId: 2, option: '.----'),
      Options(optionId: 3, option: '...--'),
      Options(optionId: 4, option: '....-')
    ],
    correctOptionId: 1,
    correctOption: "-....",
  ),
  Question(
    id: 34,
    isAudioQuestion: false,
    question: "What is Morse Code representation of 7 ?",
    options: [
      Options(optionId: 1, option: '---..'),
      Options(optionId: 2, option: '..---'),
      Options(optionId: 3, option: '--...'),
      Options(optionId: 4, option: '...--')
    ],
    correctOptionId: 3,
    correctOption: "--...",
  ),
  Question(
    id: 35,
    isAudioQuestion: false,
    question: "What is Morse Code representation of 8 ?",
    options: [
      Options(optionId: 1, option: '---..'),
      Options(optionId: 2, option: '..---'),
      Options(optionId: 3, option: '--...'),
      Options(optionId: 4, option: '...--')
    ],
    correctOptionId: 1,
    correctOption: "---..",
  ),
  Question(
    id: 36,
    isAudioQuestion: false,
    question: "What is Morse Code representation of 9 ?",
    options: [
      Options(optionId: 1, option: '----.'),
      Options(optionId: 2, option: '...--'),
      Options(optionId: 3, option: '---..'),
      Options(optionId: 4, option: '....-')
    ],
    correctOptionId: 1,
    correctOption: "----.",
  ),
  Question(
    id: 37,
    isAudioQuestion: false,
    question: "What is Morse Code representation of '.' ?",
    options: [
      Options(optionId: 1, option: '.....'),
      Options(optionId: 2, option: '..---'),
      Options(optionId: 3, option: '.-.-.-'),
      Options(optionId: 4, option: '....-')
    ],
    correctOptionId: 3,
    correctOption: ".-.-.-",
  ),
  Question(
    id: 38,
    isAudioQuestion: false,
    question: "What is Morse Code representation of ',' ?",
    options: [
      Options(optionId: 1, option: '----.'),
      Options(optionId: 2, option: '--..--'),
      Options(optionId: 3, option: '..---'),
      Options(optionId: 4, option: '._..-')
    ],
    correctOptionId: 2,
    correctOption: "--..--",
  ),
  Question(
    id: 39,
    isAudioQuestion: false,
    question: "What is Morse Code representation of '?' ?",
    options: [
      Options(optionId: 1, option: '..--..'),
      Options(optionId: 2, option: '....-'),
      Options(optionId: 3, option: '..---'),
      Options(optionId: 4, option: '--..-')
    ],
    correctOptionId: 1,
    correctOption: "..--..",
  ),
  Question(
    id: 40,
    isAudioQuestion: false,
    question: "What is Morse Code representation of '!' ?",
    options: [
      Options(optionId: 1, option: '..--..'),
      Options(optionId: 2, option: '-.-.--'),
      Options(optionId: 3, option: '..---'),
      Options(optionId: 4, option: '....-')
    ],
    correctOptionId: 2,
    correctOption: "-.-.--",
  ),
  Question(
    id: 41,
    isAudioQuestion: false,
    question: "What is Morse Code representation of '&' ?",
    options: [
      Options(optionId: 1, option: '..--..'),
      Options(optionId: 2, option: '-.-.--'),
      Options(optionId: 3, option: '.-...'),
      Options(optionId: 4, option: '..---')
    ],
    correctOptionId: 3,
    correctOption: ".-...",
  ),
  Question(
    id: 42,
    isAudioQuestion: false,
    question: "What is Morse Code representation of ':' ?",
    options: [
      Options(optionId: 1, option: '---...'),
      Options(optionId: 2, option: '-.-.--'),
      Options(optionId: 3, option: '.-...'),
      Options(optionId: 4, option: '--..-')
    ],
    correctOptionId: 1,
    correctOption: "---...",
  ),
  Question(
    id: 43,
    isAudioQuestion: false,
    question: "What is Morse Code representation of ';' ?",
    options: [
      Options(optionId: 1, option: '-.-.-.'),
      Options(optionId: 2, option: '-.-.--'),
      Options(optionId: 3, option: '.-...'),
      Options(optionId: 4, option: '....-')
    ],
    correctOptionId: 1,
    correctOption: "-.-.-.",
  ),
  Question(
    id: 44,
    isAudioQuestion: false,
    question: "What is Morse Code representation of '=' ?",
    options: [
      Options(optionId: 1, option: '-.-.-.'),
      Options(optionId: 2, option: '-.-.--'),
      Options(optionId: 3, option: '-...-'),
      Options(optionId: 4, option: '--..-')
    ],
    correctOptionId: 3,
    correctOption: "-...-",
  ),
  Question(
    id: 45,
    isAudioQuestion: false,
    question: "What is Morse Code representation of '+' ?",
    options: [
      Options(optionId: 1, option: '.--.-.'),
      Options(optionId: 2, option: '..-.--'),
      Options(optionId: 3, option: '.-.-.'),
      Options(optionId: 4, option: '.-..-')
    ],
    correctOptionId: 3,
    correctOption: ".-.-.",
  ),
  Question(
    id: 46,
    isAudioQuestion: false,
    question: "What is Morse Code representation of '-' ?",
    options: [
      Options(optionId: 1, option: '.--.-.'),
      Options(optionId: 2, option: '-....-'),
      Options(optionId: 3, option: '.-.-.'),
      Options(optionId: 4, option: '...--')
    ],
    correctOptionId: 2,
    correctOption: "-....-",
  ),
  Question(
    id: 47,
    isAudioQuestion: false,
    question: "What is Morse Code representation of '_' ?",
    options: [
      Options(optionId: 1, option: '..--.-'),
      Options(optionId: 2, option: '-....-'),
      Options(optionId: 3, option: '--.-.-'),
      Options(optionId: 4, option: '....-')
    ],
    correctOptionId: 1,
    correctOption: "..--.-",
  ),
  Question(
    id: 48,
    isAudioQuestion: false,
    question: "What is Morse Code representation of '\$' ?",
    options: [
      Options(optionId: 1, option: '..--.-'),
      Options(optionId: 2, option: '...-..-'),
      Options(optionId: 3, option: '...-.--'),
      Options(optionId: 4, option: '-...-')
    ],
    correctOptionId: 2,
    correctOption: "...-..-",
  ),
  Question(
    id: 49,
    isAudioQuestion: false,
    question: "What is Morse Code representation of '@' ?",
    options: [
      Options(optionId: 1, option: '.---.-'),
      Options(optionId: 2, option: '...-..-'),
      Options(optionId: 3, option: '.--.-.'),
      Options(optionId: 4, option: '-..--')
    ],
    correctOptionId: 3,
    correctOption: ".--.-.",
  ),
  // text based questions (Morse -> Text)
  Question(
    id: 50,
    isAudioQuestion: false,
    question: "What is text representation of '.-' ?",
    options: [
      Options(optionId: 1, option: 'Q'),
      Options(optionId: 2, option: 'B'),
      Options(optionId: 3, option: 'A'),
      Options(optionId: 4, option: 'I')
    ],
    correctOptionId: 3,
    correctOption: "A",
  ),
  Question(
    id: 51,
    isAudioQuestion: false,
    question: "What is text representation of '-...' ?",
    options: [
      Options(optionId: 1, option: 'B'),
      Options(optionId: 2, option: 'A'),
      Options(optionId: 3, option: '0'),
      Options(optionId: 4, option: '?')
    ],
    correctOptionId: 1,
    correctOption: "B",
  ),
  Question(
    id: 52,
    isAudioQuestion: false,
    question: "What is text representation of '-.-.' ?",
    options: [
      Options(optionId: 1, option: 'L'),
      Options(optionId: 2, option: 'X'),
      Options(optionId: 3, option: 'P'),
      Options(optionId: 4, option: 'C')
    ],
    correctOptionId: 4,
    correctOption: "C",
  ),
  Question(
    id: 53,
    isAudioQuestion: false,
    question: "What is text representation of '-..' ?",
    options: [
      Options(optionId: 1, option: 'W'),
      Options(optionId: 2, option: 'V'),
      Options(optionId: 3, option: 'P'),
      Options(optionId: 4, option: 'D')
    ],
    correctOptionId: 4,
    correctOption: "D",
  ),
  Question(
    id: 54,
    isAudioQuestion: false,
    question: "What is text representation of '.' ?",
    options: [
      Options(optionId: 1, option: 'E'),
      Options(optionId: 2, option: 'V'),
      Options(optionId: 3, option: 'P'),
      Options(optionId: 4, option: 'D')
    ],
    correctOptionId: 1,
    correctOption: "E",
  ),
  Question(
    id: 55,
    isAudioQuestion: false,
    question: "What is text representation of '..-.' ?",
    options: [
      Options(optionId: 1, option: 'Y'),
      Options(optionId: 2, option: 'V'),
      Options(optionId: 3, option: 'F'),
      Options(optionId: 4, option: 'K')
    ],
    correctOptionId: 3,
    correctOption: "F",
  ),
  Question(
    id: 56,
    isAudioQuestion: false,
    question: "What is text representation of '--.' ?",
    options: [
      Options(optionId: 1, option: ';'),
      Options(optionId: 2, option: 'P'),
      Options(optionId: 3, option: 'G'),
      Options(optionId: 4, option: 'Z')
    ],
    correctOptionId: 3,
    correctOption: "G",
  ),
  Question(
    id: 57,
    isAudioQuestion: false,
    question: "What is text representation of '....' ?",
    options: [
      Options(optionId: 1, option: 'Y'),
      Options(optionId: 2, option: 'H'),
      Options(optionId: 3, option: 'G'),
      Options(optionId: 4, option: 'K')
    ],
    correctOptionId: 2,
    correctOption: "H",
  ),
  Question(
    id: 58,
    isAudioQuestion: false,
    question: "What is text representation of '..' ?",
    options: [
      Options(optionId: 1, option: 'I'),
      Options(optionId: 2, option: 'B'),
      Options(optionId: 3, option: 'J'),
      Options(optionId: 4, option: 'R')
    ],
    correctOptionId: 1,
    correctOption: "I",
  ),
  Question(
    id: 59,
    isAudioQuestion: false,
    question: "What is text representation of '.---' ?",
    options: [
      Options(optionId: 1, option: 'E'),
      Options(optionId: 2, option: 'M'),
      Options(optionId: 3, option: ','),
      Options(optionId: 4, option: 'J')
    ],
    correctOptionId: 4,
    correctOption: "J",
  ),
  Question(
    id: 60,
    isAudioQuestion: false,
    question: "What is text representation of '-.-' ?",
    options: [
      Options(optionId: 1, option: 'O'),
      Options(optionId: 2, option: 'H'),
      Options(optionId: 3, option: 'K'),
      Options(optionId: 4, option: 'X')
    ],
    correctOptionId: 3,
    correctOption: "K",
  ),
  Question(
    id: 61,
    isAudioQuestion: false,
    question: "What is text representation of '.-..' ?",
    options: [
      Options(optionId: 1, option: 'N'),
      Options(optionId: 2, option: 'U'),
      Options(optionId: 3, option: '1'),
      Options(optionId: 4, option: 'L')
    ],
    correctOptionId: 4,
    correctOption: "L",
  ),
  Question(
    id: 62,
    isAudioQuestion: false,
    question: "What is text representation of '--' ?",
    options: [
      Options(optionId: 1, option: 'M'),
      Options(optionId: 2, option: 'D'),
      Options(optionId: 3, option: 'X'),
      Options(optionId: 4, option: 'V')
    ],
    correctOptionId: 1,
    correctOption: "M",
  ),
  Question(
    id: 63,
    isAudioQuestion: false,
    question: "What is text representation of '-.' ?",
    options: [
      Options(optionId: 1, option: 'M'),
      Options(optionId: 2, option: '.'),
      Options(optionId: 3, option: 'N'),
      Options(optionId: 4, option: '+')
    ],
    correctOptionId: 3,
    correctOption: "N",
  ),
  Question(
    id: 64,
    isAudioQuestion: false,
    question: "What is text representation of '---' ?",
    options: [
      Options(optionId: 1, option: 'W'),
      Options(optionId: 2, option: 'O'),
      Options(optionId: 3, option: 'V'),
      Options(optionId: 4, option: '3')
    ],
    correctOptionId: 2,
    correctOption: "O",
  ),
  Question(
    id: 65,
    isAudioQuestion: false,
    question: "What is text representation of '.--.' ?",
    options: [
      Options(optionId: 1, option: 'W'),
      Options(optionId: 2, option: 'C'),
      Options(optionId: 3, option: 'L'),
      Options(optionId: 4, option: 'P')
    ],
    correctOptionId: 4,
    correctOption: "P",
  ),
  Question(
    id: 66,
    isAudioQuestion: false,
    question: "What is text representation of '--.-' ?",
    options: [
      Options(optionId: 1, option: 'Q'),
      Options(optionId: 2, option: '-'),
      Options(optionId: 3, option: 'S'),
      Options(optionId: 4, option: 'R')
    ],
    correctOptionId: 1,
    correctOption: "Q",
  ),
  Question(
    id: 67,
    isAudioQuestion: false,
    question: "What is text representation of '.-.' ?",
    options: [
      Options(optionId: 1, option: 'R'),
      Options(optionId: 2, option: 'O'),
      Options(optionId: 3, option: 'S'),
      Options(optionId: 4, option: 'X')
    ],
    correctOptionId: 1,
    correctOption: "R",
  ),
  Question(
    id: 68,
    isAudioQuestion: false,
    question: "What is text representation of '...' ?",
    options: [
      Options(optionId: 1, option: 'E'),
      Options(optionId: 2, option: 'J'),
      Options(optionId: 3, option: 'S'),
      Options(optionId: 4, option: 'P')
    ],
    correctOptionId: 3,
    correctOption: "S",
  ),
  Question(
    id: 69,
    isAudioQuestion: false,
    question: "What is text representation of '-' ?",
    options: [
      Options(optionId: 1, option: 'E'),
      Options(optionId: 2, option: 'T'),
      Options(optionId: 3, option: 'W'),
      Options(optionId: 4, option: 'N')
    ],
    correctOptionId: 2,
    correctOption: "T",
  ),
  Question(
    id: 70,
    isAudioQuestion: false,
    question: "What is text representation of '..-' ?",
    options: [
      Options(optionId: 1, option: 'Y'),
      Options(optionId: 2, option: 'W'),
      Options(optionId: 3, option: 'U'),
      Options(optionId: 4, option: 'V')
    ],
    correctOptionId: 3,
    correctOption: "U",
  ),
  Question(
    id: 71,
    isAudioQuestion: false,
    question: "What is text representation of '...-' ?",
    options: [
      Options(optionId: 1, option: 'X'),
      Options(optionId: 2, option: 'I'),
      Options(optionId: 3, option: 'K'),
      Options(optionId: 4, option: 'V')
    ],
    correctOptionId: 4,
    correctOption: "V",
  ),
  Question(
    id: 72,
    isAudioQuestion: false,
    question: "What is text representation of '.--' ?",
    options: [
      Options(optionId: 1, option: 'W'),
      Options(optionId: 2, option: 'G'),
      Options(optionId: 3, option: ';'),
      Options(optionId: 4, option: 'Y')
    ],
    correctOptionId: 1,
    correctOption: "W",
  ),
  Question(
    id: 73,
    isAudioQuestion: false,
    question: "What is text representation of '-..-' ?",
    options: [
      Options(optionId: 1, option: 'R'),
      Options(optionId: 2, option: 'X'),
      Options(optionId: 3, option: ':'),
      Options(optionId: 4, option: 'P')
    ],
    correctOptionId: 2,
    correctOption: "X",
  ),
  Question(
    id: 74,
    isAudioQuestion: false,
    question: "What is text representation of '-.--' ?",
    options: [
      Options(optionId: 1, option: 'F'),
      Options(optionId: 2, option: 'J'),
      Options(optionId: 3, option: 'Y'),
      Options(optionId: 4, option: 'A')
    ],
    correctOptionId: 3,
    correctOption: "Y",
  ),
  Question(
    id: 75,
    isAudioQuestion: false,
    question: "What is text representation of '--..' ?",
    options: [
      Options(optionId: 1, option: 'F'),
      Options(optionId: 2, option: 'J'),
      Options(optionId: 3, option: 'Y'),
      Options(optionId: 4, option: 'Z')
    ],
    correctOptionId: 4,
    correctOption: "Z",
  ),
  /*
    ids from 76 to 100 are left empty intentionally 
    for future adjustments (if any)
  */

  // audio based questions (Morse -> Text)
  Question(
    id: 101,
    isAudioQuestion: true,
    question: ".-",
    options: [
      Options(optionId: 1, option: 'A'),
      Options(optionId: 2, option: 'J'),
      Options(optionId: 3, option: 'P'),
      Options(optionId: 4, option: 'Z')
    ],
    correctOptionId: 1,
    correctOption: "A",
  ),
  Question(
    id: 102,
    isAudioQuestion: true,
    question: "-...",
    options: [
      Options(optionId: 1, option: 'B'),
      Options(optionId: 2, option: 'N'),
      Options(optionId: 3, option: 'X'),
      Options(optionId: 4, option: ';')
    ],
    correctOptionId: 1,
    correctOption: "B",
  ),
  Question(
    id: 103,
    isAudioQuestion: true,
    question: "-.-.",
    options: [
      Options(optionId: 1, option: 'I'),
      Options(optionId: 2, option: 'Q'),
      Options(optionId: 3, option: 'J'),
      Options(optionId: 4, option: 'C')
    ],
    correctOptionId: 4,
    correctOption: "C",
  ),
  Question(
    id: 104,
    isAudioQuestion: true,
    question: "-..",
    options: [
      Options(optionId: 1, option: 'H'),
      Options(optionId: 2, option: 'A'),
      Options(optionId: 3, option: 'T'),
      Options(optionId: 4, option: 'D')
    ],
    correctOptionId: 4,
    correctOption: "D",
  ),
  Question(
    id: 105,
    isAudioQuestion: true,
    question: ".",
    options: [
      Options(optionId: 1, option: 'W'),
      Options(optionId: 2, option: 'D'),
      Options(optionId: 3, option: 'E'),
      Options(optionId: 4, option: 'Z')
    ],
    correctOptionId: 3,
    correctOption: "E",
  ),
  Question(
    id: 106,
    isAudioQuestion: true,
    question: "..-.",
    options: [
      Options(optionId: 1, option: 'W'),
      Options(optionId: 2, option: 'F'),
      Options(optionId: 3, option: 'E'),
      Options(optionId: 4, option: 'Z')
    ],
    correctOptionId: 2,
    correctOption: "F",
  ),
  Question(
    id: 107,
    isAudioQuestion: true,
    question: "--.",
    options: [
      Options(optionId: 1, option: 'G'),
      Options(optionId: 2, option: 'N'),
      Options(optionId: 3, option: 'O'),
      Options(optionId: 4, option: 'M')
    ],
    correctOptionId: 1,
    correctOption: "G",
  ),
  Question(
    id: 108,
    isAudioQuestion: true,
    question: "....",
    options: [
      Options(optionId: 1, option: 'H'),
      Options(optionId: 2, option: 'P'),
      Options(optionId: 3, option: 'C'),
      Options(optionId: 4, option: 'J')
    ],
    correctOptionId: 1,
    correctOption: "H",
  ),
  Question(
    id: 109,
    isAudioQuestion: true,
    question: "..",
    options: [
      Options(optionId: 1, option: 'X'),
      Options(optionId: 2, option: 'O'),
      Options(optionId: 3, option: 'I'),
      Options(optionId: 4, option: 'W')
    ],
    correctOptionId: 3,
    correctOption: "I",
  ),
  Question(
    id: 110,
    isAudioQuestion: true,
    question: ".---",
    options: [
      Options(optionId: 1, option: 'J'),
      Options(optionId: 2, option: 'H'),
      Options(optionId: 3, option: 'G'),
      Options(optionId: 4, option: 'K')
    ],
    correctOptionId: 1,
    correctOption: "J",
  ),
  Question(
    id: 111,
    isAudioQuestion: true,
    question: "-.-",
    options: [
      Options(optionId: 1, option: 'U'),
      Options(optionId: 2, option: 'K'),
      Options(optionId: 3, option: 'L'),
      Options(optionId: 4, option: 'P')
    ],
    correctOptionId: 2,
    correctOption: "K",
  ),
  Question(
    id: 112,
    isAudioQuestion: true,
    question: ".-..",
    options: [
      Options(optionId: 1, option: 'U'),
      Options(optionId: 2, option: 'K'),
      Options(optionId: 3, option: 'Z'),
      Options(optionId: 4, option: 'L')
    ],
    correctOptionId: 4,
    correctOption: "L",
  ),
  Question(
    id: 113,
    isAudioQuestion: true,
    question: "--",
    options: [
      Options(optionId: 1, option: 'U'),
      Options(optionId: 2, option: 'K'),
      Options(optionId: 3, option: 'M'),
      Options(optionId: 4, option: 'L')
    ],
    correctOptionId: 3,
    correctOption: "M",
  ),
  Question(
    id: 114,
    isAudioQuestion: true,
    question: "-.",
    options: [
      Options(optionId: 1, option: 'Q'),
      Options(optionId: 2, option: 'N'),
      Options(optionId: 3, option: 'M'),
      Options(optionId: 4, option: 'A')
    ],
    correctOptionId: 2,
    correctOption: "N",
  ),
  Question(
    id: 115,
    isAudioQuestion: true,
    question: "---",
    options: [
      Options(optionId: 1, option: 'O'),
      Options(optionId: 2, option: '0'),
      Options(optionId: 3, option: 'U'),
      Options(optionId: 4, option: 'C')
    ],
    correctOptionId: 1,
    correctOption: "O",
  ),
  Question(
    id: 116,
    isAudioQuestion: true,
    question: ".--.",
    options: [
      Options(optionId: 1, option: 'S'),
      Options(optionId: 2, option: 'Q'),
      Options(optionId: 3, option: 'P'),
      Options(optionId: 4, option: 'T')
    ],
    correctOptionId: 3,
    correctOption: "P",
  ),
  Question(
    id: 117,
    isAudioQuestion: true,
    question: "--.-",
    options: [
      Options(optionId: 1, option: 'S'),
      Options(optionId: 2, option: 'Q'),
      Options(optionId: 3, option: 'P'),
      Options(optionId: 4, option: 'T')
    ],
    correctOptionId: 2,
    correctOption: "Q",
  ),
  Question(
    id: 118,
    isAudioQuestion: true,
    question: ".-.",
    options: [
      Options(optionId: 1, option: 'T'),
      Options(optionId: 2, option: 'X'),
      Options(optionId: 3, option: 'R'),
      Options(optionId: 4, option: 'P')
    ],
    correctOptionId: 3,
    correctOption: "R",
  ),
  Question(
    id: 119,
    isAudioQuestion: true,
    question: "...",
    options: [
      Options(optionId: 1, option: 'S'),
      Options(optionId: 2, option: 'X'),
      Options(optionId: 3, option: 'R'),
      Options(optionId: 4, option: 'P')
    ],
    correctOptionId: 1,
    correctOption: "S",
  ),
  Question(
    id: 120,
    isAudioQuestion: true,
    question: "-",
    options: [
      Options(optionId: 1, option: 'M'),
      Options(optionId: 2, option: 'T'),
      Options(optionId: 3, option: 'V'),
      Options(optionId: 4, option: 'P')
    ],
    correctOptionId: 2,
    correctOption: "T",
  ),
  Question(
    id: 121,
    isAudioQuestion: true,
    question: "..-",
    options: [
      Options(optionId: 1, option: 'M'),
      Options(optionId: 2, option: 'T'),
      Options(optionId: 3, option: 'V'),
      Options(optionId: 4, option: 'U')
    ],
    correctOptionId: 4,
    correctOption: "U",
  ),
  Question(
    id: 122,
    isAudioQuestion: true,
    question: "...-",
    options: [
      Options(optionId: 1, option: 'S'),
      Options(optionId: 2, option: 'M'),
      Options(optionId: 3, option: 'V'),
      Options(optionId: 4, option: '3')
    ],
    correctOptionId: 3,
    correctOption: "V",
  ),
  Question(
    id: 123,
    isAudioQuestion: true,
    question: ".--",
    options: [
      Options(optionId: 1, option: 'G'),
      Options(optionId: 2, option: 'O'),
      Options(optionId: 3, option: 'Y'),
      Options(optionId: 4, option: 'W')
    ],
    correctOptionId: 4,
    correctOption: "W",
  ),
  Question(
    id: 124,
    isAudioQuestion: true,
    question: "-..-",
    options: [
      Options(optionId: 1, option: 'G'),
      Options(optionId: 2, option: 'X'),
      Options(optionId: 3, option: 'Z'),
      Options(optionId: 4, option: 'R')
    ],
    correctOptionId: 2,
    correctOption: "X",
  ),
  Question(
    id: 125,
    isAudioQuestion: true,
    question: "-.--",
    options: [
      Options(optionId: 1, option: 'Y'),
      Options(optionId: 2, option: 'K'),
      Options(optionId: 3, option: 'Z'),
      Options(optionId: 4, option: 'P')
    ],
    correctOptionId: 1,
    correctOption: "Y",
  ),
  Question(
    id: 126,
    isAudioQuestion: true,
    question: "--..",
    options: [
      Options(optionId: 1, option: 'O'),
      Options(optionId: 2, option: 'L'),
      Options(optionId: 3, option: 'Z'),
      Options(optionId: 4, option: 'U')
    ],
    correctOptionId: 3,
    correctOption: "Z",
  ),
  // Continue from 1
];
