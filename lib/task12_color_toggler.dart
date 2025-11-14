import 'package:flutter/material.dart';

class Task12ColorToggler extends StatefulWidget {
  const Task12ColorToggler({super.key});

  @override
  State<Task12ColorToggler> createState() => _Task12ColorTogglerState();
}

class _Task12ColorTogglerState extends State<Task12ColorToggler> {
  Color _backgroundColor = Colors.white;

  void _toggleColor() {
    setState(() {
      _backgroundColor =
      _backgroundColor == Colors.white ? Colors.blue : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text("Color Toggler"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),

      body: const Center(
        child: Text(
          "Tap the button to change color",
          style: TextStyle(fontSize: 18),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _toggleColor,
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
