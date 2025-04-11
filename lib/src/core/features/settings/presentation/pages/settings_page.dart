import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.surface.surface,
      appBar: UiAppBar(title: Text(SettingsI18n.title)),
      body: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(Insets.l),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PinCodeChanger(),
                      SettingsItem(
                        title: SettingsI18n.rulesTitle,
                        onPressed: () => context.push(SettingsRoutePath.rules),
                        icon: Assets.icons.icons24.file.path,
                      ),
                      SettingsItem(
                        title: SettingsI18n.faqTitle,
                        onPressed: () => context.push(SettingsRoutePath.faq),
                        icon: Assets.icons.icons24.help.path,
                      ),
                      SettingsItem(
                        title: SettingsI18n.supportTitle,
                        onPressed: () => context
                            .read<SettingsCubit>()
                            .onPressedSupport('support@oro.ru'),
                        icon: Assets.icons.icons24.helpChat.path,
                        content: Text(
                          'support@oro.ru',
                          style:
                              TextStyle(color: context.color.primary.primary),
                        ),
                      ),
                      // LocaleSwitcher(),
                      // LocalAuthSwitcher(),
                      // BiometrySwitcher(),
                      // ThemeSwitcher(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Insets.l),
                child: Row(
                  children: [
                    Expanded(
                      child: UiTonalButton(
                        onPressed: () {
                          context.read<SettingsCubit>().signOut();
                        },
                        label: SettingsI18n.signOut,
                      ),
                    ),
                  ],
                ),
              ),
              // SafeArea(
              //   child: Center(
              //     child: TextHighlight(
              //       text: SettingsI18n.deleteAccount,
              //       words: {
              //         SettingsI18n.deleteAccountLinkText: HighlightedWord(
              //           onTap: context.read<SettingsCubit>().deleteAccount,
              //           textStyle: context.text.label.large
              //               .copyWith(color: context.color.primary.primary),
              //         ),
              //       },
              //       textStyle: context.text.label.large
              //           .copyWith(color: context.color.surface.onSurfaceDim),
              //     ),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
