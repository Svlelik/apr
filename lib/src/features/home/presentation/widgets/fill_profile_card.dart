import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiFillProfile extends StatelessWidget {
  const UiFillProfile({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(Insets.l),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Insets.l),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 44,
              width: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.color.background.background,
              ),
              child: UiIcon(Assets.icons.icons24.user.path),
            ),
            const SizedBox(height: 12),
            Text(
              'Заполните профиль',
              textAlign: TextAlign.center,
              style: context.text.title.large,
            ),
            const SizedBox(height: 12),
            Text(
              'Чтобы получать опросы заполните\n личные данные в профиле',
              textAlign: TextAlign.center,
              style: context.text.body.small,
            ),
          ],
        ),
      ),
    );
  }
}
