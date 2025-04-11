import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class ConfirmSavePage extends StatelessWidget {
  const ConfirmSavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: Text(
                'Сохранения изменения?',
                style: context.theme.textTheme.titleLarge,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: Insets.l),
              child: Text('Данные можно изменить в любой момент?'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: FilledButton(
                onPressed: () {
                  Navigator.pop(context, true);
                  Navigator.pop(context);
                },
                child: Text(QuestionnairesI18n.save),
              ),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pop(context, false);
                Navigator.pop(context);
              },
              child: const Text('Не сохранять'),
            ),
          ],
        ),
      ),
    );
  }
}
