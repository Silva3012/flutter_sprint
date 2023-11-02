import 'package:flutter/material.dart';
import 'package:flutter_sprint/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF536878), Color(0xFF36454f)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
