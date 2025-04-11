import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class OnboardingItem3 extends StatelessWidget {
  const OnboardingItem3({
    required this.image,
    super.key,
    this.onPressedButton,
    this.button,
  });

  final String image;

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
              _UiCard(index: 1, title: OnboardingI18n.onboarding3Item1),
              _UiCard(index: 2, title: OnboardingI18n.onboarding3Item2),
              _UiCard(index: 3, title: OnboardingI18n.onboarding3Item3),
              Expanded(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Positioned(
                      right: 0,
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
              const UiOnboardingBottomLinks(),
            ],
          ),
        ),
      ),
    );
  }
}

class _UiCard extends StatelessWidget {
  const _UiCard({required this.index, required this.title});

  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.l),
      margin: const EdgeInsets.only(bottom: Insets.s, right: Insets.l),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.color.primary.primaryContainer,
      ),
      child: Row(
        children: [
          UiIcon(
            icon,
            color: context.color.primary.onPrimaryContainer,
          ),
          const SizedBox(width: Insets.s),
          Flexible(
            child: Text(
              title,
              style: context.text.title.large,
            ),
          ),
        ],
      ),
    );
  }

  String get icon {
    return switch (index) {
      1 => Assets.icons.icons24.num1Fill.path,
      2 => Assets.icons.icons24.num2Fill.path,
      3 => Assets.icons.icons24.num3Fill.path,
      _ => Assets.icons.icons24.num1Fill.path,
    };
  }
}
