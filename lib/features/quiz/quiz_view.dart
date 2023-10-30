import 'package:flutter/material.dart';
import 'package:muslim_buddy/features/quiz/models/quiz_question.dart';
import 'package:muslim_buddy/features/quiz/quiz_question_view.dart';

class QuizView extends StatefulWidget {
  const QuizView({Key? key, required this.questions}) : super(key: key);

  final List<QuizQuestion> questions;

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.questions.length,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  // color: Colors.white,
                  // image: DecorationImage(
                  //   image: NetworkImage(
                  //       'https://source.unsplash.com/collection/26423561?i=${index}'),
                  //   fit: BoxFit.cover,
                  // ),
                  ),
              child: Container(
                // decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
                padding: const EdgeInsets.all(20),
                child: SafeArea(
                  child: QuizQuestionView(
                    question: widget.questions[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
