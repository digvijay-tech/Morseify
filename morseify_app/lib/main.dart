import 'package:flutter/material.dart';
import 'package:morseify_app/app.dart';

void main() {
  // initialize services and configurations before the app starts
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MorseifyApp(isDevelopment: false));
}
