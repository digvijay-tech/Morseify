import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        drawerEnableOpenDragGesture: false,
        drawer: const Drawer(),
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
        ),
        body: const Center(
          child: Text("home"),
        ),
      ),
    );
  }
}
