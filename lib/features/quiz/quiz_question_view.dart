import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muslim_buddy/features/quiz/models/quiz_answer_choice.dart';
import 'package:muslim_buddy/features/quiz/quiz_answer_choice_card.dart';

import 'models/quiz_question.dart';

class QuizQuestionView extends StatefulWidget {
  const QuizQuestionView({Key? key, required this.question}) : super(key: key);

  final QuizQuestion question;

  @override
  State<QuizQuestionView> createState() => _QuizQuestionViewState();
}

class _QuizQuestionViewState extends State<QuizQuestionView> {
  final _selectedAnswer = ValueNotifier<QuizAnswerChoice?>(null);

  @override
  void initState() {
    super.initState();
    _selectedAnswer.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(widget.question.text),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: widget.question.choices.length,
                itemBuilder: (_, i) {
                  final choice = widget.question.choices[i];
                  return QuizAnswerChoiceCard(
                    choice: choice,
                    selectedAnswer: _selectedAnswer,
                  );
                }),
          )
        ],
      ),
    );
  }
}
