import 'package:flutter/material.dart';
import 'package:flutter_praktikum2_1/detail_screen.dart';
import 'package:flutter_praktikum2_1/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}


