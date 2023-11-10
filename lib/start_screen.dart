import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(120, 255, 255, 255),
          ),
          const SizedBox(
            height: 90,
          ),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.roboto(
                color: Colors.grey, fontSize: 21, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_sharp),
              label: const Text("Start Quiz"))
        ],
      ),
    );
  }
}
