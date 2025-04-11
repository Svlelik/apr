import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr/src/features/support/_support.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiOnboardingBottomLinks extends StatelessWidget {
  const UiOnboardingBottomLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Insets.l),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<dynamic>(
                    builder: (context) => const FaqPage(),
                  ),
                );
              },
              child: Text(
                OnboardingI18n.faq,
                style: context.text.label.mediumLink.copyWith(
                  color: context.color.primary.primary,
                  decorationColor: context.color.primary.primary,
                ),
              ),
            ),
            const SizedBox(width: Insets.s),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<dynamic>(
                    builder: (context) => const RulesPage(),
                  ),
                );
              },
              child: Text(
                OnboardingI18n.rules,
                style: context.text.label.mediumLink.copyWith(
                  color: context.color.primary.primary,
                  decorationColor: context.color.primary.primary,
                ),
              ),
            ),
            const SizedBox(width: Insets.s),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<dynamic>(
                    builder: (context) => const SupportPage(),
                  ),
                );
              },
              child: Text(
                OnboardingI18n.contactWithUs,
                style: context.text.label.mediumLink.copyWith(
                  color: context.color.primary.primary,
                  decorationColor: context.color.primary.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
