import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class KeyItem extends StatelessWidget {
  const KeyItem({super.key, this.child, this.onPressedNumber, this.label});

  final Widget? child;
  final String? label;
  final VoidCallback? onPressedNumber;

  @override
  Widget build(BuildContext context) {
    if (label != null) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.l,
          vertical: Insets.m,
        ),
        child: UiNumButton(
          onPressed: onPressedNumber,
          label: label ?? '',
        ),
      );
    }

    if (child != null) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.l,
          vertical: Insets.m,
        ),
        child: SizedBox(
          width: 72,
          height: 72,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onPressedNumber?.call,
                child: Center(child: child),
              ),
            ),
          ),
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
