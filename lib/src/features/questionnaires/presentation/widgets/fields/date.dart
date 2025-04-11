import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QDateField extends StatelessWidget {
  const QDateField({required this.question, super.key});

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      question: question,
      child: UiDateTimePicker(
        key: UniqueKey(),
        firstDate: DateTime.now().subtract(const Duration(days: 9999)),
        lastDate: DateTime.now(),
        formControlName: question.questionCode,
        fillColor: context.color.surface.surface,
      ),
    );
  }
}
