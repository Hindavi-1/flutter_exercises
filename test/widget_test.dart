import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Text widget test", (WidgetTester tester) async {
    // 1. Build a simple widget containing Text("Hello")
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text("Hello"),
          ),
        ),
      ),
    );

    // 2. Check if "Hello" text exists on the screen
    expect(find.text("Hello"), findsOneWidget);
  });
}
