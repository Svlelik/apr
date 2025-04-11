import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiProfileInfoBlock extends StatelessWidget {
  const UiProfileInfoBlock({
    required this.image,
    required this.title,
    required this.description,
    super.key,
  });

  final Widget image;
  final String title;
  final Widget description;

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.color.constant.white,
          borderRadius: BorderRadius.circular(Insets.l),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff757575).withOpacity(0.08),
              blurRadius: Insets.xl,
            ),
          ],
        ),
        constraints: const BoxConstraints(
          minHeight: 240,
        ),
        padding: const EdgeInsets.all(Insets.l),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image,
            const SizedBox(height: Insets.l),
            Text(
              title,
              style: context.text.title.large,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Insets.l),
            description,
          ],
        ),
      );
}
