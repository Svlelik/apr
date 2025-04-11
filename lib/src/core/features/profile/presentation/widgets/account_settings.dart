import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiAccountSettings extends StatelessWidget {
  const UiAccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileAccountSettingsBloc>(
      create: (context) => ProfileInjection.sl()
        ..add(const ProfileAccountSettingsEvent.started()),
      child:
          BlocBuilder<ProfileAccountSettingsBloc, ProfileAccountSettingsState>(
        builder: (context, state) {
          if (!state.form.isReady) {
            return const SizedBox.shrink();
          }

          return Column(
            children: [
              ReactiveForm(
                formGroup: state.form.form,
                child: UiCard(
                  child: Column(
                    children: [
                      UiPasswordField(
                        label: ProfileI18n.currentPassword,
                        formControlName:
                            ProfileAccountUpdatePasswordForm.currentPassword,
                      ),
                      const SizedBox(height: Insets.l),
                      UiPasswordField(
                        label: ProfileI18n.newPassword,
                        formControlName:
                            ProfileAccountUpdatePasswordForm.newPassword,
                        validationMessages: {
                          'pattern': (_) => ProfileI18n.passwordPatternError,
                          'minLength': (_) => ProfileI18n.passwordPatternError,
                          'mustMatch': (_) =>
                              ProfileI18n.passwordMustMatchError,
                        },
                      ),
                      const SizedBox(height: Insets.l),
                      UiPasswordField(
                        label: ProfileI18n.confirmPassword,
                        validationMessages: {
                          'pattern': (_) => ProfileI18n.passwordPatternError,
                          'minLength': (_) => ProfileI18n.passwordPatternError,
                          'mustMatch': (_) =>
                              ProfileI18n.passwordMustMatchError,
                        },
                        formControlName:
                            ProfileAccountUpdatePasswordForm.confirmNewPassword,
                      ),
                      const SizedBox(height: Insets.xl),
                      ReactiveFormConsumer(
                        builder: (context, formGroup, child) {
                          return SizedBox(
                            width: double.infinity,
                            child: UiFilledButton(
                              label: CoreI18n.save,
                              // disabled: formGroup.invalid,
                              onPressed: () {
                                context.read<ProfileAccountSettingsBloc>().add(
                                      const ProfileAccountSettingsEvent
                                          .updatePassword(),
                                    );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              UiTonalButton(
                onPressed: () {
                  context.read<ProfileAccountSettingsBloc>().add(
                        const ProfileAccountSettingsEvent.deleteAccount(),
                      );
                },
                label: SettingsI18n.deleteAccountBtn,
              ),
            ],
          );
        },
      ),
    );
  }
}
