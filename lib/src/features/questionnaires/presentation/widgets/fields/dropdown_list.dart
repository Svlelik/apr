import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QDropdownListField extends StatelessWidget {
  const QDropdownListField({required this.question, super.key});

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      question: question,
      child: UiDropDown<dynamic>(
        key: UniqueKey(),
        formControlName: question.questionCode,
        fillColor: context.color.surface.surface,
        itemAsString: (item) =>
            question.options.firstWhere((element) => element.code == item).text,
        items: question.options.map((e) => e.code).toList(),
      ),
    );
  }
}
