import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QTextField extends QField<String> {
  const QTextField({required super.question, super.key});

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      question: question,
      child: UiTextField<String>(
        key: UniqueKey(),
        formControlName: question.questionCode,
        // fillColor: context.color.surface.surface,
      ),
    );
  }
}
