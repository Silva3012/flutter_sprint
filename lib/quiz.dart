import 'package:flutter/material.dart';
import 'package:flutter_sprint/questions_screen.dart';
import 'package:flutter_sprint/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Store StartScreen in a variable so that we can conditionally render
  Widget currentScreen = const StartScreen();

  void changeScreen() {
    setState(() {
      currentScreen = const QuestionsScreen();
    });
  }

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
          child: currentScreen,
        ),
      ),
    );
  }
}
