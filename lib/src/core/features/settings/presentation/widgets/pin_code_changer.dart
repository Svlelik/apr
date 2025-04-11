import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class PinCodeChanger extends StatelessWidget {
  const PinCodeChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        // if (!state.useLocalAuth) {
        //   return const SizedBox();
        // }

        return SettingsItem(
          title: SettingsI18n.changePinCode,
          onPressed: () => context.goRelative(SettingsRoutePath.changePinCode),
          icon: Assets.icons.icons24.lock.path,
        );
      },
    );
  }
}
