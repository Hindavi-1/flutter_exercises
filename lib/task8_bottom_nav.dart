import 'package:flutter/material.dart';

class Task8BottomNav extends StatefulWidget {
  const Task8BottomNav({super.key});

  @override
  State<Task8BottomNav> createState() => _Task8BottomNavState();
}

class _Task8BottomNavState extends State<Task8BottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),

      // 6. Change body based on selected tab
      body: Center(
        child: _currentIndex == 0
            ? const Text("Home Screen", style: TextStyle(fontSize: 25))
            : _currentIndex == 1
            ? const Text("Search Screen", style: TextStyle(fontSize: 25))
            : const Text("Profile Screen", style: TextStyle(fontSize: 25)),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // highlight selected tab
        selectedItemColor: Colors.blueAccent,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // update current index
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
