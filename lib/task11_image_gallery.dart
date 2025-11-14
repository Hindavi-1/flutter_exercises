import 'package:flutter/material.dart';

class Task11ImageGallery extends StatelessWidget {
  const Task11ImageGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Gallery"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image 1
            GestureDetector(
              onTap: () {
                print("Image 1 tapped!");
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Image 1 tapped")),
                );
              },
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYT_fdTYhRPAuax2yuu_kW9wx66h06ReCeZA&s",
                width: 300,
                height: 300,
              ),
            ),

            // Image 2
            GestureDetector(
              onTap: () {
                print("Image 2 tapped!");
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Image 2 tapped")),
                );
              },
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSypN1fFT42YzQMVWxmqbK5tyzvmN1DZC3CNw&s",
                width: 300,
                height: 300,
              ),
            ),

            // Image 3
            GestureDetector(
              onTap: () {
                print("Image 3 tapped!");
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Image 3 tapped")),
                );
              },
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnySCI_nfpyXH0CS9BbHRz31IEie6lA2CJ5Q&s",
                width: 300,
                height: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
