import 'dart:convert';
import 'package:flutter/material.dart';

class Task7JsonDisplay extends StatelessWidget {
  const Task7JsonDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. JSON String
    String jsonString = '[{"name":"Apple"}, {"name":"Banana"}, {"name":"Orange"}]';

    // 2. Decode JSON → List
    List<dynamic> fruitList = json.decode(jsonString);

    return Scaffold(
      appBar: AppBar(
        title: const Text("JSON Data Display"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: fruitList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.food_bank),
            title: Text(fruitList[index]["name"]), // display name
          );
        },
      ),
    );
  }
}
