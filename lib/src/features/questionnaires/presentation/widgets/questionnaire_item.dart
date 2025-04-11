import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:shimmer/shimmer.dart';

class UiQuestionnaireItem extends StatelessWidget {
  const UiQuestionnaireItem({
    required this.icon,
    required this.title,
    required this.time,
    required this.coins,
    this.percent = 0,
    this.onPressed,
    super.key,
  });

  final IconData icon;
  final String title;
  final Duration time;
  final num coins;
  final num percent;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.color.constant.white,
            borderRadius: BorderRadius.circular(Insets.xl),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Insets.m),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UiQuestionnaireItemAvatar(
                      icon: icon,
                      percent: percent,
                    ),
                    Row(
                      children: [
                        Text(
                          '+$coins',
                          style: context.text.headline.small.copyWith(
                            color: context.color.surface.onSurfaceVariant,
                          ),
                        ),
                        const SizedBox(width: Insets.xs),
                        UiIcon(
                          Assets.icons.icons24.bonus.path,
                          padding: EdgeInsets.zero,
                          color: context.color.primary.primary,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: Insets.m),
                  child: Text(
                    title,
                    style: context.text.title.small
                        .copyWith(color: context.color.surface.onSurface),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UiQuestionnaireItemLoader extends StatelessWidget {
  const UiQuestionnaireItemLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade200,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Insets.xl),
        ),
      ),
    );
  }
}
