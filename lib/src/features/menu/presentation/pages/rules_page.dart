import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr/src/features/menu/_menu.dart';
import 'package:apr/src/features/menu/presentation/widgets/rops_list/rops_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingInjection.sl<RopCubit>()..init(),
      child: Scaffold(
        backgroundColor: context.color.background.background,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UiAprHeaderMobileBar(
                title: MenuI18n.rules,
                onBackTap: context.pop,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Insets.l),
                child: Text(
                  MenuI18n.rulesPageTitle,
                  style: context.text.headline.medium.copyWith(
                    color: context.color.surface.onSurface,
                  ),
                ),
              ),
              const SizedBox(height: Insets.l),
              const RopsList(),
              const SizedBox(height: Insets.xl),
            ],
          ),
        ),
      ),
    );
  }
}
