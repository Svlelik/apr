import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiProfileInfoRow extends StatelessWidget {
  const UiProfileInfoRow({required this.label, required this.value, super.key});

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    if (value == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.m),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: context.text.label.large.copyWith(
                fontSize: 14,
                color: context.color.surface.onSurfaceDim,
              ),
            ),
          ),
          Text(
            value ?? '',
            style: context.text.body.medium.copyWith(
              color: context.color.surface.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
