import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class BonusesPassportPage extends StatelessWidget {
  const BonusesPassportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BonusesInjection.sl<PassportBloc>()
        ..add(const PassportEvent.started()),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final layout = UiAdaptiveUtils.layoutType(constraints);
          EdgeInsets padding;
          switch (layout) {
            case UiLayoutType.tablet:
            case UiLayoutType.mobile:
              padding = const EdgeInsets.symmetric(horizontal: Insets.m);
            case UiLayoutType.desktop:
              padding = const EdgeInsets.symmetric(horizontal: 112);
          }

          return SingleChildScrollView(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: Insets.l),
                UiBreadCrumbs(
                  breadcrumbs: [
                    Breadcrumb(
                      title: BonusesI18n.title,
                      onPressed: () => context.pop(),
                    ),
                    Breadcrumb(
                      title: BonusesI18n.passportTitle,
                    ),
                  ],
                ),
                const SizedBox(height: Insets.xl),
                Text(
                  BonusesI18n.passportTitle,
                  style: context.text.headline.medium,
                ),
                const SizedBox(height: Insets.l),
                Text(
                  BonusesI18n.passportDescription,
                  style: context.text.body.small,
                ),
                const SizedBox(height: Insets.l),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Insets.m,
                    vertical: 6,
                  ),
                  decoration: ShapeDecoration(
                    color: const Color(0x19E7B008),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        BonusesI18n.passportVerificationData,
                        style: context.text.body.small.copyWith(
                          color: context.color.attention.attention,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: Insets.xl),
                const UiPassportForm(),
              ],
            ),
          );
        },
      ),
    );
  }
}
