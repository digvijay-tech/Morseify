import 'package:flutter/material.dart';
import 'package:morseify_app/widgets/encode/encodeForm.dart';

class Encode extends StatelessWidget {
  const Encode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Encode"),
      ),
      body: const SafeArea(
        child: EncodeForm(),
      ),
    );
  }
}
