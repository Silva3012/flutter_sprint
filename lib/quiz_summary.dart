import 'package:flutter/material.dart';
import 'package:flutter_sprint/results_summary.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary(this.dataSummary, {super.key});

  final List<Map<String, Object>> dataSummary;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: dataSummary.map(
            (data) {
              return ResultsSummary(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
