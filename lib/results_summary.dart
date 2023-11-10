import 'package:flutter/material.dart';
import 'package:flutter_sprint/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsSummary extends StatelessWidget {
  const ResultsSummary(this.resultData, {super.key});

  final Map<String, Object> resultData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        resultData["user_answer"] == resultData["correct_answer"];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer,
            resultData["question_index"] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  resultData["question"] as String,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  resultData["user_answer"] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 202, 171, 252),
                  ),
                ),
                Text(
                  resultData["correct_answer"] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 246),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
