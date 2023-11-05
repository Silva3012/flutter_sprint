class QuizQuestion {
  // Constructor function for the class
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  // Method to shuffle answers
  List<String> getShuffledAnswers() {
    // Create a copy of answers, store it in a variable, shuffle it and then return the shuffled answers.
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
