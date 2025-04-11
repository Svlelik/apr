import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr/src/features/menu/presentation/widgets/rops_list/_rops_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RopCubit>(
      create: (_) => OnboardingInjection.sl<RopCubit>()..init(),
      child: Scaffold(
        appBar: UiAppBar(
          centerTitle: true,
          title: Text(
            OnboardingI18n.ropPageAppBarTitle,
            style: context.text.title.large,
          ),
        ),
        body: const RopsList(),
      ),
    );
  }
}
