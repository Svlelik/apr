import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QMultiListField extends StatelessWidget {
  const QMultiListField({required this.question, super.key});

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      question: question,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: question.options
            .map(
              (e) => ReactiveValueListenableBuilder<List<String>>(
                key: UniqueKey(),
                formControlName: question.questionCode,
                builder: (context, control, child) {
                  final bool enabled = control.value?.contains(e.code) ?? false;

                  return UiCard(
                    padding: const EdgeInsets.all(Insets.l),
                    margin: const EdgeInsets.only(bottom: Insets.s),
                    borderRadius: BorderRadius.circular(Insets.l),
                    background:
                        enabled ? context.color.primary.primaryContainer : null,
                    border: Border.all(
                      color: enabled
                          ? context.color.primary.primary
                          : Colors.transparent,
                      width: 2,
                    ),
                    onPressed: () {
                      final value = control.value ?? [];

                      if (enabled) {
                        control.patchValue(
                          value
                              .whereNot((element) => element == e.code)
                              .toList(),
                        );
                      } else {
                        control.patchValue(
                          [...value, e.code],
                        );
                      }
                    },
                    child: Row(
                      children: [
                        Expanded(child: Text(e.text)),
                        UiIcon(
                          enabled
                              ? Assets.icons.icons24.checkBoxFill.path
                              : Assets.icons.icons24.checkBoxEmpty.path,
                          color: enabled
                              ? context.color.primary.primary
                              : context.color.surface.onSurfaceDim,
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
