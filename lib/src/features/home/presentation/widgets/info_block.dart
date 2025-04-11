import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiInfoBlock extends StatelessWidget {
  const UiInfoBlock({
    required this.icon,
    required this.title,
    required this.desc,
    super.key,
  });

  final String icon;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Insets.xxl, bottom: Insets.xl),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(Insets.l),
            margin: const EdgeInsets.only(bottom: Insets.l),
            decoration: BoxDecoration(
              color: context.color.surface.surfaceContainerLow,
              shape: BoxShape.circle,
            ),
            child: UiIcon(icon),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.s),
            child: Text(
              title,
              style: context.text.title.large,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.s),
            child: Text(
              desc,
              style: context.text.body.small,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
