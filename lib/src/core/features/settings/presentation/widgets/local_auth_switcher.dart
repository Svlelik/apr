import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalAuthSwitcher extends StatelessWidget {
  const LocalAuthSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return ListTile(
          title: Text(SettingsI18n.useLocalAuth),
          trailing: Switch(
            value: state.useLocalAuth,
            onChanged: (value) {
              context.read<SettingsCubit>().setUseLocalAuth(value: value);
            },
          ),
        );
      },
    );
  }
}
