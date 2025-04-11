import 'package:apr/src/features/home/_home.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiProjectProfileCard extends StatelessWidget {
  const UiProjectProfileCard({
    required this.title,
    super.key,
    this.text,
    this.icon,
    this.width = 52,
    this.height = 52,
    this.useColor = true,
    this.layoutType = UiLayoutType.desktop,
    this.iconBackgroundColor = const Color(0xfff5f5f5),
  });

  final String title;
  final InlineSpan? text;
  final Widget? icon;

  final double width;
  final double height;
  final bool useColor;
  final Color? iconBackgroundColor;
  final UiLayoutType layoutType;

  @override
  Widget build(BuildContext context) => UiProfileInfoBlock(
        image: Container(
          decoration: BoxDecoration(
            color: useColor ? iconBackgroundColor : null,
            borderRadius: BorderRadius.circular(26),
          ),
          width: width,
          height: height,
          child: Align(
            child: icon ??
                UiIcon(
                  Assets.iconsWeb.users.user.path,
                  width: 24,
                  height: 24,
                ),
          ),
        ),
        title: title,
        description: text != null
            ? Padding(
                padding: _getPaddingByLayoutType(layoutType),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: text!,
                ),
              )
            : const SizedBox.shrink(),
      );
}

EdgeInsets _getPaddingByLayoutType(UiLayoutType layoutType) {
  return switch (layoutType) {
    UiLayoutType.desktop => const EdgeInsets.only(
        left: 52.5,
        right: 52.5,
      ),
    UiLayoutType.tablet => const EdgeInsets.only(
        left: Insets.xl,
        right: Insets.xl,
      ),
    _ => const EdgeInsets.only(
        left: Insets.l,
        right: Insets.l,
      ),
  };
}
