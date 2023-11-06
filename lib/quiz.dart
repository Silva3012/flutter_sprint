import 'package:flutter/material.dart';
import 'package:flutter_sprint/data/questions.dart';
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
  // Manage state
  Widget? currentScreen;
  // A list to store chosen answers
  List<String> chosenAnswers = [];

  @override
  // Initialize state when the state object is created the first time
  void initState() {
    currentScreen = StartScreen(changeScreen);

    super.initState();
  }

  // Update state
  void changeScreen() {
    setState(() {
      currentScreen = QuestionsScreen(chosenAnswer);
    });
  }

  // Add chosen answer to the list of chosen answers
  void chosenAnswer(String answer) {
    chosenAnswers.add(answer);

    if (chosenAnswers.length == questions.length) {
      setState(() {
        // Reset chosen answers.
        chosenAnswers = [];
        // We will show resultsScreen here, for now lets just go back to the start screen
        currentScreen = StartScreen(changeScreen);
      });
    }
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
