import 'package:flutter/material.dart';
import 'dart:math';

class Task13AnimatedContainer extends StatefulWidget {
  const Task13AnimatedContainer({super.key});

  @override
  State<Task13AnimatedContainer> createState() => _Task13AnimatedContainerState();
}

class _Task13AnimatedContainerState extends State<Task13AnimatedContainer> {
  double _width = 100;
  double _height = 100;

  void _animateContainer() {
    setState(() {
      // Change to random width & height (between 100 to 250)
      _width = 100 + Random().nextInt(150).toDouble();
      _height = 100 + Random().nextInt(150).toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),

      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut, // smooth animation
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
            child: Text(
              "Animate Me!",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _animateContainer,
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
