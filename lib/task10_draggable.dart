import 'package:flutter/material.dart';

class Task10Draggable extends StatefulWidget {
  const Task10Draggable({super.key});

  @override
  State<Task10Draggable> createState() => _Task10DraggableState();
}

class _Task10DraggableState extends State<Task10Draggable> {
  Color targetColor = Colors.grey;   // Initial color of DragTarget
  String droppedText = "Drop Here";  // Initial text for DragTarget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draggable Demo"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 🟧 Draggable Box
              Draggable(
                data: "Dragged!",
                child: Container(
                  width: 130,
                  height: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "Drag me",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                feedback: Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: 130,
                    height: 130,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "Dragging...",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                childWhenDragging: Container(
                  width: 130,
                  height: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "Dragging...",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // 🟩 Drag Target
              DragTarget(
                onAccept: (data) {
                  setState(() {
                    targetColor = Colors.green;
                    droppedText = "Item Dropped!";
                  });
                },
                builder: (context, candidateData, rejectedData) {
                  return Container(
                    width: 160,
                    height: 160,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: targetColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      droppedText,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ), );

        }
}
