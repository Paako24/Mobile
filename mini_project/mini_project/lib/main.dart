import 'package:flutter/material.dart';
import 'package:mini_project/screen/home/home_screen.dart';
import 'package:mini_project/screen/home/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThisFavoriteProvider(),
      child: MaterialApp(
        title: 'mMinii Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      ),
      
    );
  }
}

