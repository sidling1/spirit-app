import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFFF69),
      body: Center(
          child: Image.asset(
              "assets/Logo.png"
          ),
      ),
    );
  }
}
