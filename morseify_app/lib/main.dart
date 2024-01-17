import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:morseify_app/app.dart';

void main() {
  // initialize services and configurations before the app starts
  WidgetsFlutterBinding.ensureInitialized();

  // enforcing portrait orientation for all devices
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MorseifyApp(isDevelopment: false));
}
