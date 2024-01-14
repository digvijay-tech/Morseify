import 'package:flutter/material.dart';
import 'package:morseify_app/widgets/decode/decodeForm.dart';

class Decode extends StatelessWidget {
  const Decode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Decode"),
      ),
      body: const SafeArea(
        child: DecodeForm(),
      ),
    );
  }
}
