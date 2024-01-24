import 'package:flutter/material.dart';
import 'package:morseify_app/widgets/home/greetings.dart';
import 'package:morseify_app/widgets/home/options.dart';
import 'package:morseify_app/widgets/home/recommend.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text("Morseify"),
        ),
        body: SafeArea(
          child: ListView(
            children: const [
              Greetings(),
              Options(),
              Recommend(),
            ],
          ),
        ),
      ),
    );
  }
}
