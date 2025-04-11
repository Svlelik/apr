import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  double currentPage = 0;

  @override
  void initState() {
    super.initState();

    addWatermark(context);

    _pageController.addListener(_listener);
  }

  @override
  void dispose() {
    _pageController.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    setState(() {
      currentPage = _pageController.page ?? 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingInjection.sl<OnboardingCubit>(),
      child: Scaffold(
        backgroundColor: context.color.constant.white,
        body: BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
            return Stack(
              children: [
                PageView(
                  controller: _pageController,
                  children: [
                    OnboardingItem1(
                      image: Assets.onboarding.image1.path,
                      title: OnboardingI18n.onboardingTitle1,
                      description: OnboardingI18n.onboardingDescription1,
                      button: OnboardingI18n.onboardingButton1,
                      onPressedButton: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                    ),
                    OnboardingItem2(
                      image: Assets.onboarding.image2.path,
                      title: OnboardingI18n.onboardingTitle2,
                      button: OnboardingI18n.onboardingButton2,
                      onPressedButton: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                    ),
                    OnboardingItem3(
                      image: Assets.onboarding.image3.path,
                      button: OnboardingI18n.createAccount,
                      onPressedButton: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<dynamic>(
                            builder: (
                              context,
                            ) =>
                                const LoginPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    child: Align(
                      child: Container(
                        width: 26 * 3,
                        height: Insets.xxxl,
                        margin: const EdgeInsets.only(bottom: Insets.l),
                        child: PageDots(count: 3, currentPage: currentPage),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: SafeArea(
                    child: Align(
                      child: Container(
                        height: Insets.xxxl,
                        margin: const EdgeInsets.only(bottom: Insets.l),
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: Insets.l),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute<dynamic>(
                                      builder: (context) => const LoginPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  OnboardingI18n.skip,
                                  style: context.text.body.smallLink.copyWith(
                                    color: context.color.primary.primary,
                                    decorationColor:
                                        context.color.primary.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
