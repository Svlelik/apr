import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:flutter/material.dart';

class QuestionnairesPage extends StatelessWidget {
  const QuestionnairesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(QuestionnairesI18n.title)),
      body: const QuestionnairesList(),
    );
  }
}
