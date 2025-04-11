import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class RopCardWidget extends StatelessWidget {
  const RopCardWidget({
    required this.title,
    required this.description,
    super.key,
    this.width,
  });

  final double? width;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(
        vertical: Insets.l,
        horizontal: Insets.xl,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            16,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.text.title.medium),
          Padding(
            padding: const EdgeInsets.only(
              top: Insets.l,
            ),
            child: Text(
              description,
              style: context.text.body.medium,
            ),
          ),
        ],
      ),
    );
  }
}
