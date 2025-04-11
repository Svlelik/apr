import 'package:apr/src/core/navigation/router_helper.dart';
import 'package:apr/src/core/utils/_utils.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:feature_flags_toggly/feature_flags_toggly.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class BonusesWritePage extends StatefulWidget {
  const BonusesWritePage({super.key});

  static const _iconSize = 48.0;

  @override
  State<BonusesWritePage> createState() => _BonusesWritePageState();
}

class _BonusesWritePageState extends State<BonusesWritePage> {
  @override
  void initState() {
    super.initState();
    context.read<UserPointsBloc>().add(const UserPointsEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    final userAmount = context.watch<UserPointsBloc>().state.maybeWhen(
          success: (dto, pointsConfig, __) => dto.amount,
          orElse: () => 0,
        );

    final availableSpendAmount =
        context.watch<UserPointsBloc>().state.maybeWhen(
              success: (dto, pointsConfig, __) => dto.availableSpendAmount,
              orElse: () => 0,
            );

    final minSumCard = context.watch<UserPointsBloc>().state.maybeWhen(
          success: (dto, pointsConfig, __) => pointsConfig.minSumCard,
          orElse: () => null,
        );

    final maxSumYear = context.watch<UserPointsBloc>().state.maybeWhen(
          success: (dto, pointsConfig, __) => pointsConfig.maxSumYear,
          orElse: () => null,
        );

    final minSumMobile = context.watch<UserPointsBloc>().state.maybeWhen(
          success: (dto, pointsConfig, __) => pointsConfig.minSumMobile,
          orElse: () => null,
        );

    final isAvailable = context.watch<UserPointsBloc>().state.maybeWhen(
          success: (dto, pointsConfig, isAvailable) => isAvailable,
          orElse: () => false,
        );

    return BlocBuilder<UserPointsBloc, UserPointsState>(
      builder: (context, state) {
        return ListView(
          shrinkWrap: true,
          children: [
            if (!isAvailable)
              FutureBuilder(
                future: Toggly.evaluateFeatureGate(
                  [FeatureToggleType.isDevSpace.name],
                ),
                builder: (context, snapshot) {
                  final isDev = (snapshot.data ?? false) == true;

                  return !isDev
                      ? UiCard(
                          child: Padding(
                            padding: const EdgeInsets.all(Insets.xl),
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: BonusesWritePage._iconSize,
                                    height: BonusesWritePage._iconSize,
                                    padding: const EdgeInsets.all(Insets.m),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: context
                                          .color.attention.attentionContainer,
                                    ),
                                    child: Icon(
                                      UiIcons.info,
                                      color: context
                                          .color.attention.onAttentionContainer,
                                    ),
                                  ),
                                  const SizedBox(height: Insets.m),
                                  Text(
                                    BonusesI18n.exchangeBonusesUnavailable,
                                    style: context.text.title.large,
                                  ),
                                  const SizedBox(height: Insets.m),
                                  Text(
                                    BonusesI18n
                                        .exchangeBonusesUnavailableDescription,
                                    style: context.text.body.small.copyWith(
                                      color: context
                                          .color.surface.onSurfaceVariant,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : const SizedBox();
                },
              )
            else if ((maxSumYear ?? 1) <= 0 || availableSpendAmount == 0)
              UiCard(
                child: Padding(
                  padding: const EdgeInsets.all(Insets.xl),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: BonusesWritePage._iconSize,
                          height: BonusesWritePage._iconSize,
                          padding: const EdgeInsets.all(Insets.m),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.color.attention.attentionContainer,
                          ),
                          child: Icon(
                            UiIcons.info,
                            color: context.color.attention.onAttentionContainer,
                          ),
                        ),
                        const SizedBox(height: Insets.m),
                        Text(
                          BonusesI18n.maxSumYearAttention,
                          style: context.text.title.large,
                        ),
                        const SizedBox(height: Insets.m),
                        Text(
                          BonusesI18n.maxSumYearAttentionDescription,
                          style: context.text.body.small.copyWith(
                            color: context.color.surface.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Column(
              children: [
                const SizedBox(height: Insets.s),
                FutureBuilder(
                  future: Toggly.evaluateFeatureGate(
                    [FeatureToggleType.isDevSpace.name],
                  ),
                  builder: (context, snapshot) {
                    final isDev = (snapshot.data ?? false) == true;

                    return RewardOptionCard(
                      title: BonusesI18n.writingOffCardTitle,
                      mainText: BonusesI18n.writingOffCardDescription,
                      iconPath: Assets.icons.card.path,
                      onPress: () => context.goRelative(BonusesRoutePath.card),
                      buttonLabel: BonusesI18n.select,
                      info: availableSpendAmount == 0
                          ? BonusesI18n.maxSumYearAttention
                          : null,
                      tooltipText: BonusesI18n.writingOffCardTooltipText,
                      tooltipArrowDirection: UiTooltipArrow.up,
                      disabled: !isDev &&
                          (userAmount < (minSumCard ?? double.infinity) ||
                              !isAvailable),
                    );
                  },
                ),
                const SizedBox(height: Insets.s),
                FutureBuilder(
                  future: Toggly.evaluateFeatureGate(
                    [FeatureToggleType.isDevSpace.name],
                  ),
                  builder: (context, snapshot) {
                    final isDev = (snapshot.data ?? false) == true;

                    return RewardOptionCard(
                      title: BonusesI18n.writingOffPhoneTitle,
                      mainText: BonusesI18n.writingOffPhoneDescription,
                      iconPath: Assets.icons.tapPhone.path,
                      info: userAmount < (minSumMobile ?? double.infinity)
                          ? BonusesI18n.userAmountIsLessAvailable(
                              minSumMobile ?? 0,
                            )
                          : null,
                      disabled: !isDev &&
                          (userAmount < (minSumCard ?? double.infinity) ||
                              !isAvailable),
                      buttonLabel: BonusesI18n.select,
                      onPress: () => context.goRelative(BonusesRoutePath.phone),
                    );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
