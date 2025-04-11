import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class OnboardingItem2 extends StatelessWidget {
  const OnboardingItem2({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(bottom: Insets.l, right: Insets.l),
                child: Text(
                  title,
                  style: context.text.display.small2.copyWith(
                    color: context.color.surface.onSurface,
                  ),
                ),
              ),
              Wrap(
                spacing: Insets.s,
                runSpacing: Insets.s,
                children: [
                  UiTagStatus(
                    title: OnboardingI18n.onboarding2Tag1,
                    backgroundColor: context.color.primary.primaryContainer,
                    foregroundColor: context.color.primary.onPrimaryContainer,
                  ),
                  UiTagStatus(
                    title: OnboardingI18n.onboarding2Tag2,
                    backgroundColor: context.color.secondary.secondaryContainer,
                    foregroundColor:
                        context.color.secondary.onSecondaryContainer,
                  ),
                  UiTagStatus(
                    title: OnboardingI18n.onboarding2Tag3,
                    backgroundColor: context.color.attention.attentionContainer,
                    foregroundColor:
                        context.color.attention.onAttentionContainer,
                  ),
                ],
              ),
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
