import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

// TODO: переименовать файл
class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SupportBloc>(
      create: (context) =>
          AuthInjection.sl()..add(const SupportEvent.started()),
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: BlocBuilder<SupportBloc, SupportState>(
            builder: (context, state) {
              if (state.status.isPure) {
                return const SizedBox();
              }

              return ReactiveForm(
                formGroup: state.form!.form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(Insets.l),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: Insets.l),
                              child: Text(
                                AuthI18n.supportTitle,
                                style: context.theme.textTheme.titleLarge,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: Insets.l),
                              child: Text(AuthI18n.supportDescription),
                            ),
                            if (!state.profile.isAuthenticated)
                              UiTextField<String>(
                                formControlName: SupportForm.email,
                                // labelText: AuthI18n.supportEmail,
                              ),
                            if (!state.profile.isAuthenticated)
                              const SizedBox(height: Insets.l),
                            Text(AuthI18n.supportMessage),
                            // const UiTextAreaField(
                            //   formControlName: SupportForm.message,
                            //   minLines: 5,
                            //   maxLines: 5,
                            // ),
                            // const UiDropFile(
                            //   formControlName: SupportForm.file,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: FilledButton(
                        onPressed: () {
                          state.form!.form.markAllAsTouched();

                          if (state.form!.form.valid) {
                            context
                                .read<SupportBloc>()
                                .add(const SupportEvent.send());
                          }
                        },
                        child: Text(AuthI18n.supportSubmit),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
