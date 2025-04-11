import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QAppBarWidget extends StatelessWidget {
  const QAppBarWidget({
    required this.title,
    required this.onBackButtonPressed,
    required this.backgroundColor,
    super.key,
  });
  final String title;
  final VoidCallback onBackButtonPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: context.text.title.medium.copyWith(
          color: context.color.surface.onSurface,
        ),
      ),
      leadingWidth: 56.0 + Insets.l,
      leading: Padding(
        padding: const EdgeInsets.only(left: Insets.xs),
        child: Align(
          child: Column(
            children: [
              UiIconButton(
                onPressed: onBackButtonPressed,
                icon: UiIcons.close,
              ),
            ],
          ),
        ),
      ),
      actions: const [SizedBox(width: 56.0 + Insets.l)],
    );
  }
}
