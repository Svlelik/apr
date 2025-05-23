import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiErrorNotify extends StatelessWidget {
  const UiErrorNotify({
    super.key,
    this.title,
    this.description,
    this.onPressed,
  });

  final Widget? title;
  final Widget? description;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Insets.l),
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(color: Colors.red, width: 2),
        borderRadius: BorderRadius.circular(Insets.l),
      ),
      child: UiCommonNotify(
        title: title,
        description: description,
        onPressed: onPressed,
      ),
    );
  }
}
