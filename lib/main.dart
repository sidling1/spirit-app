import 'package:flutter/material.dart';
import 'package:spirit/screens/logo_screen.dart';
import 'package:spirit/screens/sports_screen.dart';
import 'package:spirit/screens/signin_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SportsScreen(),
    );
  }
}
