import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiHomeSlider extends StatelessWidget {
  const UiHomeSlider({super.key, this.items = const []});

  final List<HomeSliderModel> items;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: 114,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: Insets.m),
        itemBuilder: (context, index) {
          final HomeSliderModel item = items.elementAt(index);

          return Container(
            width: 320 / 375 * size.width,
            padding: const EdgeInsets.all(Insets.l),
            margin: const EdgeInsets.symmetric(horizontal: Insets.xs),
            decoration: BoxDecoration(
              color: context.color.surface.surface,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: Insets.l),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: Insets.s),
                          child: Text(
                            item.title,
                            style: context.text.title.medium,
                          ),
                        ),
                        Text(
                          item.desc,
                          style: context.text.body.small,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(Insets.l),
                  decoration: BoxDecoration(
                    color: item.iconColor ?? context.color.secondary.secondary,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: UiIcon(
                    item.icon,
                    color: context.color.secondary.onSecondary,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class HomeSliderModel {
  HomeSliderModel({
    required this.title,
    required this.desc,
    required this.icon,
    this.iconColor,
    this.onPressed,
  });

  final String title;
  final String desc;
  final String icon;
  final Color? iconColor;

  final VoidCallback? onPressed;
}
