// root of the app
import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/themes.dart';

// views
import 'package:morseify_app/views/splashscreen.dart';
import 'package:morseify_app/views/home.dart';
import 'package:morseify_app/views/settings.dart';
import 'package:morseify_app/views/quiz.dart';
import 'package:morseify_app/views/encode.dart';
import 'package:morseify_app/views/decode.dart';

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
        '/quiz': (context) => const Quiz(),
        '/settings': (context) => const Settings(),
      },
    );
  }
}
