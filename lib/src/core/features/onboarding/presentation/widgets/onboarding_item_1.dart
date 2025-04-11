import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class OnboardingItem1 extends StatelessWidget {
  const OnboardingItem1({
    required this.image,
    required this.title,
    super.key,
    this.description,
    this.onPressedButton,
    this.button,
  });

  final String image;
  final String title;
  final String? description;
  final String? button;

  final VoidCallback? onPressedButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: Insets.xxxl),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Insets.l,
            Insets.l,
            Insets.zero,
            Insets.l,
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(bottom: Insets.l, right: Insets.l),
                child: Text(
                  title,
                  style: context.text.display.small,
                ),
              ),
              if (description != null)
                Padding(
                  padding: const EdgeInsets.only(right: Insets.l),
                  child: Text(
                    description ?? '',
                    style: context.text.body.medium,
                  ),
                ),
              Expanded(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Positioned(
                      right: -180,
                      child: Image.asset(image, package: Assets.package),
                    ),
                  ],
                ),
              ),
              if (button != null)
                Padding(
                  padding: const EdgeInsets.only(right: Insets.l),
                  child: Row(
                    children: [
                      Expanded(
                        child: UiFilledButton(
                          onPressed: onPressedButton,
                          label: button ?? '',
                        ),
                      ),
                    ],
                  ),
                ),
              const Opacity(
                opacity: 0,
                child: UiOnboardingBottomLinks(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
