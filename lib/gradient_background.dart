import 'package:flutter/material.dart';
import 'package:flutter_sprint/start_screen.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF536878), Color(0xFF36454f)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)),
      child: const Center(
        child: StartScreen(),
      ),
    );
  }
}
