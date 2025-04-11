import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QCheckboxField extends StatelessWidget {
  const QCheckboxField({required this.question, super.key});

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      question: question,
      child: QCheckboxListReactiveField(
        key: UniqueKey(),
        formControlName: question.questionCode,
        label: question.title,
        value: true,
      ),
    );
  }
}

class QCheckboxListReactiveField extends ReactiveFormField<bool, bool> {
  QCheckboxListReactiveField({
    required String formControlName,
    required String label,
    required bool value,
    super.key,
  }) : super(
          formControlName: formControlName,
          builder: (ReactiveFormFieldState<bool, bool> field) {
            final state = field;
            final bool isSelected = value == field.value;

            return UiCard(
              padding: const EdgeInsets.all(Insets.l),
              margin: const EdgeInsets.only(bottom: Insets.s),
              borderRadius: BorderRadius.circular(Insets.l),
              background: isSelected
                  ? state.context.color.primary.primaryContainer
                  : null,
              border: Border.all(
                color: isSelected
                    ? state.context.color.primary.primary
                    : Colors.transparent,
                width: 2,
              ),
              onPressed: () {
                if (field.value == null) {
                  field.didChange(value);
                } else {
                  field.didChange(!field.value!);
                }
              },
              child: Row(
                children: [
                  Expanded(child: Text(label)),
                  UiIcon(
                    isSelected
                        ? Assets.icons.icons24.checkBox.path
                        : Assets.icons.icons24.checkBoxEmpty.path,
                    color:
                        isSelected ? state.context.color.primary.primary : null,
                  ),
                ],
              ),
            );
          },
        );

  @override
  ReactiveFormFieldState<bool, bool> createState() =>
      ReactiveFormFieldState<bool, bool>();
}
