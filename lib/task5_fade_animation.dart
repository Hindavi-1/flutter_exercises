import 'package:flutter/material.dart';

class Task5FadeAnimation extends StatefulWidget {
  const Task5FadeAnimation({super.key});

  @override
  State<Task5FadeAnimation> createState() => _Task5FadeAnimationState();
}

class _Task5FadeAnimationState extends State<Task5FadeAnimation> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    // Start the animation after 1 second
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fade-In Animation"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0, // fade in/out
          duration: const Duration(seconds: 1),
          child: const Text(
            "Welcome!",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
