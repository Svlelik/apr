import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QFieldWrapper extends StatelessWidget {
  const QFieldWrapper({
    required this.question,
    required this.child,
    super.key,
    this.showTitle = true,
  });

  final QuestionModel question;

  final bool showTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showTitle)
            Text(
              question.title,
              style: context.text.title.medium,
            ),
          if (question.description != null &&
              (question.description?.isNotEmpty ?? false))
            Padding(
              padding: const EdgeInsets.only(top: Insets.s),
              child: Text(
                question.description ?? '',
                style: context.text.label.large.copyWith(
                  fontSize: 14,
                  color: context.color.surface.onSurfaceVariant,
                ),
              ),
            ),
          const SizedBox(height: Insets.l),
          child,
        ],
      ),
    );
  }
}
