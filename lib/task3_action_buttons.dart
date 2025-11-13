import 'package:flutter/material.dart';

class Task3ActionButtons extends StatelessWidget {
  const Task3ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action Buttons"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // evenly spaces buttons
          children: [
            // Call Button
            IconButton(
              onPressed: () {
                print("Call Button Pressed");
              },
              icon: const Icon(Icons.call, color: Colors.green, size: 35),
            ),

            // Message Button
            IconButton(
              onPressed: () {
                print("Message Button Pressed");
              },
              icon: const Icon(Icons.message, color: Colors.blue, size: 35),
            ),

            // Email Button
            IconButton(
              onPressed: () {
                print("Email Button Pressed");
              },
              icon: const Icon(Icons.email, color: Colors.red, size: 35),
            ),
          ],
        ),
      ),
    );
  }
}
