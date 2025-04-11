import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QSwitchField extends StatelessWidget {
  const QSwitchField({required this.question, super.key});

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      question: question,
      child: UiReactiveSwitchListTile(
        key: UniqueKey(),
        formControlName: question.questionCode,
        label: Text(question.title),
        margin: EdgeInsets.zero,
      ),
    );
  }
}
