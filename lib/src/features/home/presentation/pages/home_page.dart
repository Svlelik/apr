import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr/src/core/navigation/_navigation.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:apr/src/features/home/_home.dart';
import 'package:apr/src/features/projects/_projects.dart';
import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).viewPadding.top;

    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) =>
              HomeInjection.sl()..add(const HomeEvent.started()),
        ),
        BlocProvider<StoriesBloc>(
          create: (context) =>
              HomeInjection.sl()..add(const StoriesEvent.started()),
        ),
      ],
      child: Scaffold(
        backgroundColor: context.color.background.background,
        // appBar: UiAppBar(
        //   leading: UiIconButton(
        //     icon: Assets.icons.usersProfile.path,
        //     onPressed: () {
        //       context.goRelative(ProfileRoutePath.initial);
        //     },
        //   ),
        //   title: const Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       UiBalance(),
        //     ],
        //   ),
        //   actions: [
        //     UiIconButton(
        //       icon: Assets.icons.settings.path,
        //       onPressed: () {
        //         context.goRelative(SettingsRoutePath.initial);
        //       },
        //     ),
        //   ],
        // ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: paddingTop),
                  Padding(
                    padding: const EdgeInsets.all(Insets.l),
                    child: Text(
                      HomeI18n.welcome,
                      style: context.text.headline.medium,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: Insets.l),
                    child: UiStories(),
                  ),
                  const SizedBox(height: Insets.l),
                  IntrinsicHeight(
                    child: Container(
                      constraints: const BoxConstraints(minHeight: 140),
                      padding: const EdgeInsets.symmetric(horizontal: Insets.l),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: _buildBonusesCard(),
                          ),
                          const SizedBox(width: Insets.m),
                          Expanded(
                            child: UiAchievementMobile(
                              title: HomeI18n.newUserStatusTitle,
                              description: HomeI18n.newUserStatusDesc,
                              currentValue: 3,
                              maxValue: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: Insets.l),
                  if (state.user.isNew)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: Insets.l),
                      child: UiFillProfile(
                        onPressed: () {
                          context.goRelative(ProfileRoutePath.initial);
                        },
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(Insets.l),
                    child: Text(
                      HomeI18n.availablePolls,
                      style: context.text.title.medium,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: Insets.l),
                    child: UiProjectCards(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Insets.l),
                    child: Text(
                      HomeI18n.profileForms,
                      style: context.text.title.medium,
                    ),
                  ),
                  const QuestionnairesList(
                    padding: EdgeInsets.symmetric(horizontal: Insets.l),
                  ),
                  const SizedBox(height: Insets.xl),
                ],
              ),
            );

            // SingleChildScrollView(
            //   child:

            //   Center(
            //     child: Padding(
            //       padding: const EdgeInsets.all(Insets.l),
            //       child: Column(
            //         children: [
            //           if (state.user.isNew)
            //             Column(
            //               children: [
            //                 const Padding(
            //                   padding: EdgeInsets.only(bottom: Insets.l),
            //                   child: Icon(Icons.edit, size: Insets.xxxl),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(bottom: Insets.l),
            //                   child: Text(
            //                     HomeI18n.fillMainInfo,
            //                     textAlign: TextAlign.center,
            //                     style: context.theme.textTheme.titleLarge,
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(bottom: Insets.l),
            //                   child: Text(
            //                     HomeI18n.fillMainInfoDescription,
            //                     textAlign: TextAlign.center,
            //                     style: context.theme.textTheme.labelSmall,
            //                   ),
            //                 ),
            //                 FilledButton(
            //                   onPressed: () {
            //                     context.push(
            //                       '${HomeRoutePath.initial}/${ProfileRoutePath.initial}/${ProfileRoutePath.info}',
            //                     );
            //                   },
            //                   child: Text(HomeI18n.fillBtn),
            //                 ),
            //               ],
            //             ),
            //         ],
            //       ),
            //     ),
            //   ),
            // );
          },
        ),
      ),
    );
  }

  Widget _buildBonusesCard() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profileState) {
        final userMetastatus = profileState.maybeWhen(
          initial: (status, error, profile) => profile.metaStatus,
          orElse: () => null,
        );
        final userMetastatusWrong = ['np', 'del'].contains(userMetastatus);

        return BlocBuilder<UserPointsBloc, UserPointsState>(
          builder: (context, userPointsState) {
            final userAmountIsLessMinSumOutput = userPointsState.maybeWhen(
              success: (dto, config, _) {
                return dto.amount >= config.minSumOutput;
              },
              orElse: () => false,
            );

            // TODO: вынести механику шиммера в отдельный виджет со stubBuilder
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: userPointsState.maybeWhen(
                success: (dto, _, __) => UiBalanceMobileWidget(
                  title: HomeI18n.bonuses,
                  description: HomeI18n.bonusesDesc,
                  withdrawalButtonLabel: HomeI18n.withdrawalButtonLabel,
                  isShowWithdrawButton:
                      userAmountIsLessMinSumOutput && !userMetastatusWrong,
                  onTapWithdrawButton: () => context.goRelative(
                    BonusesRoutePath.bonuses,
                  ),
                  amount: dto.amount,
                ),
                orElse: () => const UiBalanceCardShimmer(),
              ),
            );
          },
        );
      },
    );
  }
}
