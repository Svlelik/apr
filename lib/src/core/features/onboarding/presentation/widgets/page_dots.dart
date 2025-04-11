import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class PageDots extends StatelessWidget {
  const PageDots({required this.count, required this.currentPage, super.key});

  final int count;
  final double currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => Expanded(
          child: Container(
            width: double.infinity,
            height: Insets.xs,
            margin: const EdgeInsets.symmetric(
              horizontal: Insets.xxs,
            ),
            decoration: BoxDecoration(
              color: context.color.surface.outlineVariant,
              borderRadius: BorderRadius.circular(100),
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;

                final double left = currentPage.ceil() >= index + 1
                    ? width * (currentPage - index)
                    : 0;

                final double right =
                    (width - width * (currentPage - index + 1)).clamp(0, width);

                return Container(
                  margin: EdgeInsets.only(
                    left: left,
                    right: right,
                  ),
                  decoration: BoxDecoration(
                    color: context.color.primary.primary,
                    borderRadius: BorderRadius.circular(100),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
