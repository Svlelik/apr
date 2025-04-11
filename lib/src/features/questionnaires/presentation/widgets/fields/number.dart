import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QNumberField extends StatelessWidget {
  const QNumberField({required this.question, super.key});

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      question: question,
      child: UiTextField<String>(
        key: UniqueKey(),
        formControlName: question.questionCode,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],

        // fillColor: context.color.surface.surface,
      ),
    );
  }
}
