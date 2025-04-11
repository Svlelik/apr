import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr/src/features/menu/_menu.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:shimmer/shimmer.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FaqCubit>(
      create: (_) => OnboardingInjection.sl<FaqCubit>()..init(),
      child: Scaffold(
        backgroundColor: context.color.background.background,
        body: BlocBuilder<FaqCubit, FaqState>(
          builder: (context, state) {
            final faq = state.faqResponse?.firstWhere(
              (element) =>
                  element.attributes?.name == StaticContentFaqRopEnum.faq,
            );

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  UiAprHeaderMobileBar(
                    title: MenuI18n.faq,
                    onBackTap: context.pop,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Insets.l),
                    child: Text(
                      MenuI18n.faqPageTitle,
                      style: context.text.headline.medium.copyWith(
                        color: context.color.surface.onSurface,
                      ),
                    ),
                  ),
                  if (state.status.isFetchingFailure)
                    Text(state.error ?? '')
                  else
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: ListView.separated(
                        key: ValueKey(state.status),
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(
                          left: Insets.l,
                          right: Insets.l,
                          top: Insets.l,
                          bottom: Insets.s,
                        ),
                        shrinkWrap: true,
                        itemCount:
                            (state.status.isFetchingInProgress || faq == null)
                                ? 5
                                : faq.attributes!.data!.items!.length - 1,
                        itemBuilder: (context, index) {
                          if (state.status.isFetchingInProgress ||
                              faq == null) {
                            return const FaqWidgetLoader();
                          } else {
                            final item = faq.attributes!.data!.items![index];

                            return ExpandableFaqWidget(
                              title: item.name!,
                              description: item.value!,
                            );
                          }
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: Insets.s),
                      ),
                    ),
                  if (faq != null)
                    Container(
                      margin: const EdgeInsets.only(
                        left: Insets.l,
                        right: Insets.l,
                        bottom: Insets.l,
                      ),
                      width: double.infinity,
                      padding: const EdgeInsets.all(Insets.xl),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(Insets.l),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            faq.attributes!.data!.items!.last.name!,
                            style: context.text.title.medium,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: Insets.l,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...List.generate(
                                    faq.attributes!.data!.items!.last.htmlValue!
                                        .length, (index) {
                                  final htmlValue = faq.attributes!.data!.items!
                                      .last.htmlValue![index];

                                  final bool isLast = index ==
                                      faq.attributes!.data!.items!.last
                                          .htmlValue!.length;

                                  return Padding(
                                    padding: EdgeInsets.only(
                                      bottom: isLast ? Insets.zero : Insets.xl,
                                    ),
                                    child: HtmlWidget(
                                      htmlValue,
                                      customStylesBuilder: (element) {
                                        if (element.localName == 'a') {
                                          return {
                                            'text-decoration-color': '#009074',
                                          };
                                        }
                                        return null;
                                      },
                                    ),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class FaqWidgetLoader extends StatelessWidget {
  const FaqWidgetLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade200,
      child: Container(
        width: double.infinity,
        height: 88,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Insets.xl),
        ),
      ),
    );
  }
}
