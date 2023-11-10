import 'package:flutter/material.dart';
import 'package:flutter_sprint/data/questions.dart';
import 'package:flutter_sprint/quiz_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, this.onRestart, {super.key});

  final List<String> selectedAnswers;
  final void Function() onRestart;

  // A list (Map) that will hold question, user answer, correct answer
  List<Map<String, Object>> getQuizData() {
    final List<Map<String, Object>> quizSummary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      quizSummary.add(
        {
          "question_index": i,
          "question": questions[i].text,
          "correct_answer": questions[i].answers[0],
          "user_answer": selectedAnswers[i]
        },
      );
    }
    return quizSummary;
  }

  @override
  Widget build(context) {
    final quizData = getQuizData();
    final numberOfTotalQuestions = questions.length;
    final numberOfCorrectAnswers = quizData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have answered $numberOfCorrectAnswers of $numberOfTotalQuestions questions correctly!",
              style: GoogleFonts.roboto(
                color: const Color.fromARGB(198, 255, 255, 255),
                fontSize: 19,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuizSummary(quizData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.refresh),
              label: const Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
