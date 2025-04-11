import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedTab = 0;

  void setTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ProfileInjection.sl<ProfileBloc>()
        ..add(const ProfileEvent.started()),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: context.color.background.background,
            appBar: UiAppBar(
              title: Text(ProfileI18n.title),
              actions: [
                UiAprIconTextButton(
                  icon: Assets.icons.login.svg(
                    colorFilter: ColorFilter.mode(
                      context.color.surface.onSurfaceVariant,
                      BlendMode.srcIn,
                    ),
                  ),
                  caption: CoreI18n.signOut,
                  onPressed: () {
                    context
                        .read<ProfileBloc>()
                        .add(const ProfileEvent.signOut());
                  },
                ),
              ],
            ),
            body: Builder(
              builder: (context) {
                if (state.status.isFirstFetchingInProgress) {
                  return const Center(child: CircularProgressIndicator());
                }

                return ListView(
                  padding: const EdgeInsets.all(Insets.l),
                  children: [
                    UiIDCardProfile(
                      id: state.profile.profileId.toString(),
                      description: ProfileI18n.idCardDescription,
                    ),
                    const SizedBox(height: Insets.s),
                    UiProfileFilling(
                      title: ProfileI18n.fillingProfile,
                      description: ProfileI18n.fillingProfileDescription,
                      percent: state.profile.fullness,
                    ),
                    const SizedBox(height: Insets.xl),
                    SizedBox(
                      height: 32,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          UiChip(
                            label: ProfileI18n.mainQuestionnaire,
                            selected: selectedTab == 0,
                            onPressed: () {
                              setTab(0);
                            },
                          ),
                          const SizedBox(width: Insets.xs),
                          UiChip(
                            label: ProfileI18n.extendedQuestionnaire,
                            selected: selectedTab == 1,
                            onPressed: () {
                              setTab(1);
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: Insets.m),
                    if (selectedTab == 0) UiProfileForm(profile: state.profile),
                    if (selectedTab == 1) const QuestionnairesList(),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
