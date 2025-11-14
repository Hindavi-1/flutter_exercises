import 'package:flutter/material.dart';
import 'task1_user_profile.dart';
import 'task2_login_form.dart';
import 'task3_action_buttons.dart';
import 'task4_navigation/home_screen.dart';
import 'task5_fade_animation.dart';
import 'task6_listview.dart';
import 'task7_json_display.dart';
import 'task8_bottom_nav.dart';
import 'task10_draggable.dart';
import 'task11_image_gallery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task11ImageGallery(),
    );
  }
}
