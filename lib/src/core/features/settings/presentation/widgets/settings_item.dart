import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    required this.icon,
    required this.title,
    super.key,
    this.onPressed,
    this.content,
  });

  final String icon;
  final String title;
  final Widget? content;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: Insets.s),
        child: SizedBox(
          height: 56,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(right: Insets.m, bottom: Insets.s),
                child: SizedBox.square(
                  dimension: 48,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: context.color.secondary.secondaryContainer,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: UiIcon(
                        icon,
                        color: context.color.secondary.secondary,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: context.color.surface.outlineVariant,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: Insets.s),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: context.text.body.medium.copyWith(
                              color: context.color.surface.onSurface,
                            ),
                          ),
                        ),
                        if (content != null) content ?? const SizedBox.shrink(),
                        UiIcon(Assets.icons.icons24.arrowR.path),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
