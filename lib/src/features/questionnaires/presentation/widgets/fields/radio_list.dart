import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QRadioListField extends StatelessWidget {
  const QRadioListField({required this.question, super.key});

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      question: question,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: question.options
            .map(
              (e) => QRadioListReactiveField(
                key: UniqueKey(),
                formControlName: question.questionCode,
                label: e.text,
                value: e.code,
              ),
            )
            .toList(),
      ),
    );
  }
}

class QRadioListReactiveField extends ReactiveFormField<String, String> {
  QRadioListReactiveField({
    required String formControlName,
    required String label,
    required String value,
    super.key,
  }) : super(
          formControlName: formControlName,
          builder: (ReactiveFormFieldState<String, String> field) {
            final state = field;

            return UiCard(
              padding: const EdgeInsets.all(Insets.l),
              margin: const EdgeInsets.only(bottom: Insets.s),
              borderRadius: BorderRadius.circular(Insets.l),
              background: value == field.value
                  ? state.context.color.primary.primaryContainer
                  : null,
              border: Border.all(
                color: value == field.value
                    ? state.context.color.primary.primary
                    : Colors.transparent,
                width: 2,
              ),
              onPressed: () {
                field.didChange(value);
              },
              child: Text(label),
            );
          },
        );

  @override
  ReactiveFormFieldState<String, String> createState() =>
      ReactiveFormFieldState<String, String>();
}
