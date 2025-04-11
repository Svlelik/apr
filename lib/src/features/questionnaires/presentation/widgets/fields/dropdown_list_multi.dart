import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QDropdownListMultiField extends StatelessWidget {
  const QDropdownListMultiField({
    required this.question,
    super.key,
  });

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      question: question,
      child: UiDropDownMulti(
        key: UniqueKey(),
        formControlName: question.questionCode,
        itemAsString: (item) =>
            question.options.firstWhere((element) => element.code == item).text,
        items: question.options.map((e) => e.code).toList(),
        fillColor: context.color.surface.surface,
      ),

      // Column(
      //   children: question.options.map((e) {
      //     return ReactiveValueListenableBuilder<List<String>>(
      //       formControlName: question.questionCode,
      //       builder: (context, control, child) {
      //         final bool enabled = control.value?.contains(e.code) ?? false;

      //         return GestureDetector(
      //           onTap: () {
      //             final value = control.value ?? [];

      //             if (enabled) {
      //               control.patchValue(
//   value.whereNot((element) => element == e.code).toList(),
      //               );
      //             } else {
      //               control.patchValue(
      //                 [...value, e.code],
      //               );
      //             }
      //           },
      //           child: Container(
      //             margin: const EdgeInsets.only(bottom: Insets.l),
      //             padding: const EdgeInsets.all(Insets.l),
      //             decoration: BoxDecoration(
      //               border: Border.all(
      //                 color: enabled
      //                     ? Colors.black
      //                     : Colors.black.withOpacity(0.3),
      //               ),
      //               borderRadius: BorderRadius.circular(Insets.s),
      //             ),
      //             child: Row(
      //               children: [
      //                 Expanded(child: Text(e.text)),
      //                 Icon(
      //                   enabled
      //                       ? Icons.radio_button_on
      //                       : Icons.radio_button_off,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         );
      //       },
      //     );
      //   }).toList(),
      // ),
    );
  }
}
