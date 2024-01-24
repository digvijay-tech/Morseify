import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';

class Recommend extends StatelessWidget {
  const Recommend({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 14.0,
      ),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              print("Open developer portfolio website..");
            },
            leading: const Icon(
              Icons.info_rounded,
              size: 36.0,
            ),
            title: const Text(
              "About Morseify",
              style: TextStyle(
                fontSize: subheading,
              ),
            ),
            subtitle: const Text(
              "Get in touch with me if you have any project ideas or suggestion.",
              style: TextStyle(
                fontSize: body,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              print("Open developer portfolio website..");
            },
            leading: const Icon(
              Icons.person,
              size: 36.0,
            ),
            title: const Text(
              "Developer",
              style: TextStyle(
                fontSize: subheading,
              ),
            ),
            subtitle: const Text(
              "Get in touch with me if you have any project ideas or suggestion.",
              style: TextStyle(
                fontSize: body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
