import 'package:flutter/material.dart';
import 'task1_user_profile.dart';
import 'task2_login_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task2LoginForm(),
    );
  }
}
