import 'package:flutter/material.dart';

class Task6ListView extends StatelessWidget {
  const Task6ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of Items"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10, // total 10 items
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.list),
            title: Text("Item ${index + 1}"),
            subtitle: const Text("This is a list item"),
          );
        },
      ),
    );
  }
}
