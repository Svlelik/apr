import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    required this.icon,
    super.key,
    this.child,
    this.onTap,
    this.text,
    this.backgroundIconColor,
    this.foregroundIconColor,
  });

  final VoidCallback? onTap;
  final Widget? child;
  final String? text;
  final Color? backgroundIconColor;
  final Color? foregroundIconColor;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final bgIcon =
        backgroundIconColor ?? context.color.secondary.secondaryContainer;

    final iconColor =
        foregroundIconColor ?? context.color.secondary.onSecondaryContainer;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: Insets.l,
          left: Insets.l,
          right: Insets.l,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(shape: BoxShape.circle, color: bgIcon),
              child: UiIcon(icon, color: iconColor),
            ),
            const SizedBox(width: Insets.m),
            Expanded(
              child: Container(
                height: 48 + Insets.s,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: context.color.surface.outlineVariant,
                    ),
                  ),
                ),
                padding: const EdgeInsets.only(bottom: Insets.s),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(bottom: Insets.s),
                        alignment: Alignment.centerLeft,
                        child: child ??
                            (text != null ? Text(text!) : const Spacer()),
                      ),
                    ),
                    UiIcon(
                      Assets.icons.icons24.arrowR.path,
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
