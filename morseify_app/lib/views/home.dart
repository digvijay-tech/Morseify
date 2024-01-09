import 'package:flutter/material.dart';
import 'package:morseify_app/widgets/home/customDrawer.dart';
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
        drawerEnableOpenDragGesture: false,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
          ),
          title: const Text("Morseify"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/settings");
              },
              icon: const Icon(Icons.settings),
            ),
          ],
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
