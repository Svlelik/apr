import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiSuccessNotify extends StatelessWidget {
  const UiSuccessNotify({
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
        color: context.color.constant.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(Insets.l),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Assets.icons.checkCircle.svg(),
          const SizedBox(width: Insets.s),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null)
                  DefaultTextStyle(
                    style: context.text.body.medium,
                    child: title ?? const SizedBox.shrink(),
                  ),
                if (description != null) description ?? const SizedBox.shrink(),
              ],
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: onPressed,
              child: Icon(
                Icons.close,
                size: Insets.l,
                color: context.color.surface.onSurfaceDim,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
