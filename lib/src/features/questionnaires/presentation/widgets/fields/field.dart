import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';

class QField<T> extends StatelessWidget {
  const QField({required this.question, super.key});

  final QuestionModel question;

  FormControl<T>? getFormControl(BuildContext context) {
    final AbstractControl<Object>? form = ReactiveForm.of(context);

    final AbstractControl<dynamic>? control =
        // ignore: invalid_use_of_protected_member, cast_nullable_to_non_nullable
        form!.findControl(question.questionCode);

    return control as FormControl<T>?;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
