import 'package:muslim_buddy/features/quiz/models/quiz_answer_choice.dart';

class QuizQuestion {
  const QuizQuestion(
      {required this.id, required this.text, required this.choices});
  final String id;
  final String text;
  final List<QuizAnswerChoice> choices;
}
