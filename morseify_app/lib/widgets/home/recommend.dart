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
              showAboutDialog(
                context: context,
                applicationIcon: const CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/Morseify.png"),
                ),
                applicationName: 'Morseify',
                applicationVersion: '1.0.1',
                applicationLegalese:
                    "Morseify is a free, personal project offered 'as is' without collection of any user data, provided for educational purposes with no warranties or liabilities assumed.",
              );
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
              "Discover Morseify: Version Info, Licensing, and More",
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
