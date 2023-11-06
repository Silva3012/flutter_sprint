import 'package:flutter/material.dart';
import 'package:flutter_sprint/data/questions.dart';
import 'package:flutter_sprint/quiz_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;

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
    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have answered X of Y questions correctly..."),
            const SizedBox(
              height: 30,
            ),
            QuizSummary(getQuizData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
