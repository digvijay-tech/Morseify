import 'package:flutter/material.dart';
import 'package:morseify_app/utilities/constants.dart';

// Home Drawer
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Drawer header Widget
          const DrawerHeader(
            decoration: BoxDecoration(
              color: secondaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(
                    color: baseLightColor,
                    fontSize: subheading,
                  ),
                ),
                Text(
                  "John Doe",
                  style: TextStyle(
                    color: baseLightColor,
                    fontSize: heading,
                  ),
                ),
              ],
            ),
          ),

          // Drawer Items
          ListTile(
            title: const Text("Decode"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/decode");
            },
          ),
          ListTile(
            title: const Text("Encode"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/encode");
            },
          ),
          ListTile(
            title: const Text("Quiz"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/quiz");
            },
          ),
          ListTile(
            title: const Text("Developer"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
