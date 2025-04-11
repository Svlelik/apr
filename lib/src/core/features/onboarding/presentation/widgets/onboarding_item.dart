import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    required this.image,
    required this.title,
    super.key,
    this.description,
    this.onPressedButton,
  });

  final String image;
  final String title;
  final String? description;

  final VoidCallback? onPressedButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: Insets.xxxl),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Insets.l),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: Insets.s),
                child: Text(
                  title,
                  style: context.text.display.small
                      .copyWith(color: context.color.constant.white),
                ),
              ),
              if (description != null)
                Text(
                  description ?? '',
                  style: context.text.body.medium.copyWith(
                    color: context.color.primary.onPrimaryOpacity60,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
