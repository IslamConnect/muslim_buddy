import 'package:flutter/material.dart';
import 'package:muslim_buddy/features/quiz/models/quiz_answer_choice.dart';

class QuizAnswerChoiceCard extends StatelessWidget {
  const QuizAnswerChoiceCard(
      {Key? key, required this.choice, required this.selectedAnswer})
      : super(key: key);

  final QuizAnswerChoice choice;
  final ValueNotifier<QuizAnswerChoice?> selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(choice.text),
      leading: Radio<QuizAnswerChoice>(
        value: choice,
        groupValue: selectedAnswer.value,
        onChanged: (value) => selectedAnswer.value = value,
      ),
    );
  }
}
