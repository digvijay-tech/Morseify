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
];
