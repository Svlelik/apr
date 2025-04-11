import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QSegmentedButtonField extends StatelessWidget {
  const QSegmentedButtonField({required this.question, super.key});

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      question: question,
      child: ReactiveValueListenableBuilder<String>(
        key: UniqueKey(),
        formControlName: question.questionCode,
        builder: (context, control, child) {
          return Row(
            children: question.options.mapIndexed((index, e) {
              final bool isSelected = e.code == control.value;

              Color color = Colors.transparent;

              if (isSelected) {
                color = context.theme.colorScheme.primary;
              }

              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    control.patchValue(e.code);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: color,
                      border: Border.all(),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(
                          index == 0 ? Insets.l : Insets.zero,
                        ),
                        right: Radius.circular(
                          index == question.options.length - 1
                              ? Insets.l
                              : Insets.zero,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.s),
                      child: Text(e.text),
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
