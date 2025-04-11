import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiQuestionnaireProgressIndicator extends StatelessWidget {
  const UiQuestionnaireProgressIndicator({
    required this.length,
    required this.current,
    required this.formControlNames,
    super.key,
  });

  final int length;
  final int current;
  final List<String> formControlNames;

  @override
  Widget build(BuildContext context) {
    return UiCard(
      borderRadius: BorderRadius.circular(Insets.l),
      padding:
          const EdgeInsets.symmetric(vertical: Insets.xl, horizontal: Insets.l),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            QuestionnairesI18n.questionnaireProgress,
            style: context.text.title.medium,
          ),
          const SizedBox(height: Insets.l),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  style: context.text.title.small
                      .copyWith(color: context.color.surface.onSurfaceDim),
                  children: [
                    TextSpan(
                      text: '${current + 1}',
                      style: TextStyle(color: context.color.primary.primary),
                    ),
                    const TextSpan(text: '/'),
                    TextSpan(text: '$length'),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: List.generate(
                    length,
                    (index) => Expanded(
                      child: ReactiveValueListenableBuilder(
                        formControlName: formControlNames.elementAt(index),
                        builder: (context, control, child) {
                          Color color =
                              context.color.surface.onSurfaceDimVariant;

                          if (control.valid) {
                            color = context.color.primary.primary;
                          }

                          if ((control.dirty || control.touched) &&
                              control.invalid) {
                            color = context.color.error.error;
                          }

                          if (control.value == null) {
                            color = context.color.surface.onSurfaceDimVariant;
                          }

                          if (index == current) {
                            color = context.color.tertiary.tertiary;
                          }

                          return Container(
                            height: Insets.xs,
                            margin: const EdgeInsets.symmetric(
                              horizontal: Insets.xxs,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: color,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
