import 'package:flutter/material.dart';
import 'package:muslim_buddy/features/quiz/quiz_view.dart';

import '../common/highlighted_icon_button.dart';
import '../quiz/models/quiz_answer_choice.dart';
import '../quiz/models/quiz_question.dart';

class QuranicArabicPage extends StatefulWidget {
  const QuranicArabicPage({Key? key}) : super(key: key);

  @override
  State<QuranicArabicPage> createState() => _QuranicArabicPageState();
}

class _QuranicArabicPageState extends State<QuranicArabicPage> {
  final questions = [
    QuizQuestion(
      id: '1',
      text: 'What is my name?',
      choices: [
        QuizAnswerChoice(id: '1', text: 'Blah'),
        QuizAnswerChoice(id: '2', text: 'Ze'),
        QuizAnswerChoice(id: '3', text: 'La'),
        QuizAnswerChoice(id: '4', text: 'Woopt'),
      ],
    ),
    QuizQuestion(
      id: '2',
      text: 'What is your name?',
      choices: [
        QuizAnswerChoice(id: '1', text: 'Blah'),
        QuizAnswerChoice(id: '2', text: 'Ze'),
        QuizAnswerChoice(id: '3', text: 'La'),
        QuizAnswerChoice(id: '4', text: 'Woopt'),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(7),
          child: ClipOval(
            child: Container(
              color: Colors.white.withOpacity(.2),
              child: Builder(
                builder: (c) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(c).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                  color: Colors.white,
                  splashRadius: 20,
                ),
              ),
            ),
          ),
        ),
        title: Text('Test'),
        actions: const [
          HighlightedIconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Open settings',
          ),
          SizedBox(width: 10)
        ],
      ),
      drawer: Drawer(),
      body: QuizView(
        questions: questions,
      ),
    );
  }
}
