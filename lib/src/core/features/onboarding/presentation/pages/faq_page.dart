import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({
    super.key,
    this.innerPage = false,
    this.showTitle,
  });

  final bool innerPage;
  final bool? showTitle;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FaqCubit>(
      create: (_) => OnboardingInjection.sl<FaqCubit>()..init(),
      child: innerPage ? _innerPage() : _page(context),
    );
  }

  Widget _innerPage() => FaqList(showTitle: showTitle ?? false);

  Widget _page(BuildContext context) => Scaffold(
        appBar: UiAppBar(
          centerTitle: true,
          title: Text(
            OnboardingI18n.faqPageTitle,
            style: context.text.title.large,
          ),
        ),
        body: const FaqList(),
      );
}
