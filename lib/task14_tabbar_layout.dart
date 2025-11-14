import 'package:flutter/material.dart';

class Task14TabBarLayout extends StatelessWidget {
  const Task14TabBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Example"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,

          bottom: const TabBar(
            tabs: [
              Tab(text: "Chats", icon: Icon(Icons.chat)),
              Tab(text: "Status", icon: Icon(Icons.circle)),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            Center(child: Text("Chats Screen", style: TextStyle(fontSize: 22))),
            Center(child: Text("Status Screen", style: TextStyle(fontSize: 22))),
          ],
        ),
      ),
    );
  }
}
