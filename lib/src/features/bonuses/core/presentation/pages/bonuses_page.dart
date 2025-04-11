import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:apr/src/features/bonuses/core/_core.dart';
import 'package:apr/src/features/home/_home.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class BonusesPage extends StatefulWidget {
  const BonusesPage({super.key});

  @override
  State<BonusesPage> createState() => _BonusesPageState();
}

class _BonusesPageState
    extends InjectableState<BonusesPage, UserPointsBloc, UserPointsState> {
  @override
  Widget builder(BuildContext context, UserPointsState state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(BonusesI18n.title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: Insets.l),
          child: Column(
            children: [
              Material(
                color: context.color.constant.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(Insets.l),
                ),
                child: Container(
                  height: 96,
                  margin: const EdgeInsets.symmetric(horizontal: Insets.l),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Spacer(),
                          Text(
                            BonusesI18n.yourBonuses,
                            style: context.text.title.medium,
                          ),
                          Text(
                            HomeI18n.bonusesDesc,
                            style: context.text.body.small,
                          ),
                          const Spacer(),
                        ],
                      ),
                      const Spacer(),
                      Material(
                        color: const Color.fromRGBO(236, 244, 243, 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(Insets.l)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Insets.l,
                            vertical: Insets.m,
                          ),
                          height: 40,
                          child: SizedBox(
                            height: 28,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                state.maybeWhen(
                                  success: (dto, config, boo) => Text(
                                    dto.amount.toString(),
                                    style: context.text.title.medium,
                                  ),
                                  orElse: () => const SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                                const SizedBox(width: Insets.xs),
                                Center(
                                  child: UiIcon(
                                    Assets.icons.icons24.bonus.path,
                                    color: const Color.fromRGBO(0, 144, 116, 1),
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Insets.l),
              Chips(
                [
                  ChipViewModel(
                    BonusesI18n.writeOffMethods,
                    [
                      const BonusesWritePage(),
                    ],
                    isActive: true,
                  ),
                  ChipViewModel(
                    BonusesI18n.termsOfUse,
                    [
                      const BonusesConditionsPage(),
                    ],
                  ),
                  ChipViewModel(
                    BonusesI18n.frequentQuestions,
                    [
                      const BonusesQuestionsPage(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
