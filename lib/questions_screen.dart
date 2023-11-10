import 'package:flutter/material.dart';
import 'package:flutter_sprint/answer_button.dart';
import 'package:flutter_sprint/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onChosenAnswer, {super.key});

  final void Function(String answer) onChosenAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  // A variable to hold the current question index
  var currentQuestionIndex = 0;

  // This function will increment the current question index
  void answerQuestion(String chooseAnswer) {
    widget.onChosenAnswer(chooseAnswer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.roboto(
                  color: Colors.grey,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answer, () {
                answerQuestion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}
