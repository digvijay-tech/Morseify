import 'package:flutter/material.dart';
import 'package:morseify_app/widgets/learn/dictionaryControls.dart';

class Dictionary extends StatelessWidget {
  const Dictionary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dictionary"),
      ),
      body: const SafeArea(
        child: DictionaryControls(),
      ),
    );
  }
}
