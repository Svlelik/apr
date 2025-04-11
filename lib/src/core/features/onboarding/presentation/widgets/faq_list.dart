import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class FaqList extends StatelessWidget {
  const FaqList({this.showTitle = true, super.key});

  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FaqCubit, FaqState>(
      builder: (context, state) {
        if (state.status.isFetchingInProgress) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isFetchingSuccess) {
          final FaqDatumModel? faq = state.faqResponse?.firstWhere(
            (element) =>
                element.attributes?.name == StaticContentFaqRopEnum.faq,
          );

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.l),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (showTitle)
                    Padding(
                      padding: const EdgeInsets.only(
                        top: Insets.xxl,
                        bottom: Insets.xl,
                      ),
                      child: Text(
                        OnboardingI18n.faqBodyTitle,
                        style: context.text.headline.medium,
                      ),
                    ),
                  if (faq != null)
                    ...List.generate(faq.attributes!.data!.items!.length - 1,
                        (index) {
                      final item = faq.attributes!.data!.items![index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: Insets.s),
                        child: ExpandableFaqWidget(
                          title: item.name!,
                          description: item.value!,
                        ),
                      );
                    }),
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.xl),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: Insets.l,
                        horizontal: Insets.xl,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.all(Radius.circular(Insets.l)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            faq!.attributes!.data!.items!.last.name!,
                            style: context.text.title.medium,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: Insets.l),
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
                  ),
                ],
              ),
            ),
          );
        } else if (state.status.isFetchingFailure) {
          return Center(
            child: Text(
              OnboardingI18n.faqPageError,
            ),
          );
        } else {
          return Center(
            child: Text(
              OnboardingI18n.faqPageNoData,
            ),
          );
        }
      },
    );
  }
}
