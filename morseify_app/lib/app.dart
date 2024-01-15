// root of the app
import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/themes.dart';

// views
import 'package:morseify_app/views/splashscreen.dart';
import 'package:morseify_app/views/home.dart';
import 'package:morseify_app/views/settings.dart';
import 'package:morseify_app/views/quiz/quiz.dart';
import 'package:morseify_app/views/quiz/quizAttempt.dart';
import 'package:morseify_app/views/encode.dart';
import 'package:morseify_app/views/decode.dart';
import 'package:morseify_app/views/learn/learn.dart';
import 'package:morseify_app/views/learn/dictionary.dart';
import 'package:morseify_app/views/learn/listen.dart';

class MorseifyApp extends StatelessWidget {
  final bool isDevelopment;

  const MorseifyApp({super.key, required this.isDevelopment});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: isDevelopment,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/splash',
      routes: {
        '/': (context) => const Home(),
        '/splash': (context) => const SplashScreen(),
        '/encode': (context) => const Encode(),
        '/decode': (context) => const Decode(),
        '/learn': (context) => const Learn(),
        '/learn/dictionary': (context) => const Dictionary(),
        '/learn/listen': (context) => const PracticeListening(),
        '/quiz': (context) => const Quiz(),
        '/quiz/attempt': (context) => const QuizAttempt(),
        '/settings': (context) => const Settings(),
      },
    );
  }
}
