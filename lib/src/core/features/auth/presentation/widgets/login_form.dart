// ignore_for_file: lines_longer_than_80_chars

import 'package:apr/src/core/_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UiLoginForm extends StatelessWidget {
  const UiLoginForm({
    required this.form,
    this.onSubmitForm,
    this.message,
    super.key,
  });

  final FormGroup form;
  final String? message;

  final VoidCallback? onSubmitForm;

  void _onSubmit() {
    form.markAllAsTouched();

    if (form.valid) {
      onSubmitForm?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: Insets.l,
              vertical: Insets.s,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight - Insets.l,
                minWidth: constraints.minHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: Insets.s),
                        child: Text(
                          AuthI18n.signInTitle,
                          style: context.text.headline.medium,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: Insets.xxl),
                        child: Text(
                          AuthI18n.signInDescription,
                          style: context.text.body.medium,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: Insets.l),
                      child: UiPhoneField(
                        formControlName: LoginForm.phone,
                        label: AuthI18n.phone,
                        keyboardType: TextInputType.phone,
                        autofocus: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: Insets.l),
                      child: ReactiveValueListenableBuilder(
                        formControlName: LoginForm.isApprovalPdn,
                        builder: (context, control, child) {
                          return UiCheckboxButton(
                            widgetLabel: Padding(
                              padding: const EdgeInsets.only(top: Insets.xs),
                              child: Text.rich(
                                TextSpan(
                                  style: context.text.body.small,
                                  children: [
                                    TextSpan(text: AuthI18n.isApprovalPDNTitle),
                                    TextSpan(
                                      text: AuthI18n.isApprovalPDNLink,
                                      style: TextStyle(
                                        color: context.color.primary.primary,
                                        decorationColor:
                                            context.color.primary.primary,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                  'Показываем обработку персональных данных',
                                                ),
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onPressed: (value) {
                              control.patchValue(value);
                            },
                            selected: (control.value as bool?) ?? false,
                          );
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: Insets.xxl),
                      child: ReactiveValueListenableBuilder(
                        formControlName: LoginForm.isApprovalParticipation,
                        builder: (context, control, child) {
                          return UiCheckboxButton(
                            widgetLabel: Padding(
                              padding: const EdgeInsets.only(top: Insets.xs),
                              child: Text.rich(
                                TextSpan(
                                  style: context.text.body.small,
                                  children: [
                                    TextSpan(
                                      text:
                                          AuthI18n.isApprovalParticipationTitle,
                                    ),
                                    TextSpan(
                                      text:
                                          AuthI18n.isApprovalParticipationLink,
                                      style: TextStyle(
                                        color: context.color.primary.primary,
                                        decorationColor:
                                            context.color.primary.primary,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                  'Показываем пользовательское соглашение',
                                                ),
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onPressed: (value) {
                              control.patchValue(value);
                            },
                            selected: (control.value as bool?) ?? false,
                          );
                        },
                      ),
                    ),

                    const Spacer(),
                    SafeArea(
                      child: Row(
                        children: [
                          Expanded(
                            child: ReactiveFormConsumer(
                              builder: (context, formGroup, child) {
                                return UiFilledButton(
                                  onPressed: _onSubmit,
                                  disabled: formGroup.invalid,
                                  label: AuthI18n.signInBtn,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Visibility(
                    //   visible: message != null,
                    //   child: Text(
                    //     message ?? '',
                    //     style: const TextStyle(color: Colors.red),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
