import 'package:apr/src/core/di/core_injection_container.dart';
import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:collection/collection.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QuestionnaireBlock extends StatefulWidget {
  const QuestionnaireBlock({
    required this.form,
    required this.pages,
    required this.title,
    super.key,
    this.onSubmit,
  });

  final String title;

  final FormGroup form;

  final Map<int, List<QuestionModel>> pages;

  final Future<void> Function(UpdateAnswerRequestDTO data)? onSubmit;

  @override
  State<QuestionnaireBlock> createState() => _QuestionnaireBlockState();
}

class _QuestionnaireBlockState extends State<QuestionnaireBlock> {
  GlobalKey appBarKey = GlobalKey();

  int currentPage = 0;

  double appBarHeight = 0;

  FormGroup get formGroup => widget.form;

  Map<int, List<QuestionModel>> get pages => widget.pages;

  bool get canPressedPrev => currentPage > 0;
  bool get canPressedNext => currentPage < pages.length - 1;

  bool isLoading = false;

  List<QuestionModel> get currentQuestions =>
      pages.values.elementAt(currentPage);

  QuestionModel get currentQuestion => currentQuestions.first;

  Color blendColors(Color color1, Color color2, double initialValue) {
    // Обрезаем значение, чтобы оно оставалось в пределах от 0 до 1
    final double value = initialValue.clamp(0.0, 1.0);

    return Color.alphaBlend(
      color1.withOpacity(1 - value),
      color2.withOpacity(value),
    );
  }

  Future<void> _onSubmit() async {
    formGroup.markAllAsTouched();

    if (formGroup.invalid) {
      await sendAnswer();
      if (formGroup.errors.keys.isNotEmpty) {
        setState(() {
          currentPage = pages.values.toList().indexWhere(
                (element) =>
                    element.firstWhereOrNull(
                      (element) =>
                          element.questionCode == formGroup.errors.keys.first,
                    ) !=
                    null,
              );
        });
      }
    } else {
      await sendAnswer();

      CoreInjection.sl<EventBus>().fire(
        const QuestionnairesEvent.refreshPoints(),
      );

      context.pop();
    }
  }

  Future<void> sendAnswer() async {
    final List<QuestionModel> questions = [];

    for (final element in pages.values.toList()[currentPage]) {
      questions.add(element);
    }

    await widget.onSubmit?.call(
      UpdateAnswerRequestDTO(
        answers: questions.map((e) {
          List<dynamic> answerCodes = [];
          List<dynamic> answerValues = [];

          final value = formGroup.value[e.questionCode];

          if (e.options.isNotEmpty) {
            if (value != null) {
              if (value is List) {
                answerCodes = value;
              } else {
                answerCodes = [value];
              }

              answerValues = e.options
                  .where((element) => answerCodes.contains(element.code))
                  .map((e) => e.text)
                  .toList();
            }
          } else {
            if (value != null) {
              if (value is List) {
                answerValues = value;
              } else {
                answerValues = [value];
              }
            }
          }

          return UpdateAnswerItemDTO(
            questionCode: e.questionCode,
            answerCodes: answerCodes,
            answerValues: answerValues,
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
      builder: (context, state) {
        return ReactiveFormBuilder(
          form: () => formGroup,
          builder: (context, formGroup, child) {
            return PopScope(
              canPop: false,
              onPopInvoked: (bool didPop) async {
                if (!didPop) {
                  if (formGroup.dirty) {
                    await state.maybeWhen(
                      orElse: () {},
                      success: (
                        questionnaire,
                        onPopInvoked,
                        cacheData,
                        allAnswers,
                      ) async {
                        await onPopInvoked();

                        Navigator.of(context).pop();
                      },
                    );
                  } else {
                    Navigator.of(context).pop();
                  }
                }
              },
              child: ReactiveForm(
                formGroup: formGroup,
                child: Scaffold(
                  appBar: UiAppBar(
                    title: Text(widget.title),
                    automaticallyImplyLeading: false,
                    leading: UiIconButton(
                      icon: UiIcons.close,
                      onPressed: context.pop,
                    ),
                    centerTitle: true,
                  ),
                  body: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Insets.l),
                        child: UiQuestionnaireProgressIndicator(
                          length: pages.length,
                          current: currentPage,
                          formControlNames: pages.values
                              .map((e) => e.first.questionCode)
                              .toList(),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.all(Insets.l),
                          child: Column(
                            children: [
                              ...currentQuestions
                                  .map((e) => QuestionFieldWidget(question: e)),
                            ],
                          ),
                        ),
                      ),
                      QNavigation(
                        canPressedPrev: canPressedPrev,
                        canPressedNext: canPressedNext,
                        onPressedPrev: onPressedPrev,
                        onPressedNext: onPressedNext,
                        onSubmit: _onSubmit,
                        currentPage: currentPage,
                        pagesLength: pages.length,
                        isLoading: isLoading,
                      ),
                    ],
                  ),

                  // CustomScrollView(
                  //   slivers: [
                  //     QAppBarWidget(
                  //       key: appBarKey,
                  //       backgroundColor: Colors.transparent,
                  //       onBackButtonPressed: () => Navigator.maybePop(context),
                  //       title: state.maybeMap(
                  //         orElse: () => '',
                  //         success: (_) => _.questionnaire.title,
                  //       ),
                  //     ),
                  //     SliverPinnedHeader(
                  //       child: Container(
                  //         padding: EdgeInsets.only(
                  //           top: _scrollOffset < paddingTop
                  //               ? 0
                  //               : (_scrollOffset - paddingTop).clamp(
                  //                   0,
                  //                   paddingTop,
                  //                 ),
                  //         ),
                  //         decoration: BoxDecoration(color: _bgColor),
                  //         child: Container(
                  //           padding: const EdgeInsets.all(Insets.l),
                  //           decoration: BoxDecoration(
                  //             color: _bgColor,
                  //             boxShadow: [
                  //               context.color.elevation
                  //                   .elevation2WithParams(_opacityForShadow),
                  //             ],
                  //           ),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               if (currentQuestion.isRequired)
                  //                 Container(
                  //                   decoration: BoxDecoration(
                  //                     color: blendColors(
                  //                       context.color.surface.surface,
                  //                       context
                  //                           .color.surface.surfaceContainerLow,
                  //                       _bgColor.opacity,
                  //                     ),
                  //                     borderRadius:
                  //                         BorderRadius.circular(Insets.s),
                  //                   ),
                  //                   padding: const EdgeInsets.symmetric(
                  //                     horizontal: 6,
                  //                     vertical: Insets.xs,
                  //                   ),
                  //                   margin: const EdgeInsets.only(
                  //                     bottom: Insets.s,
                  //                   ),
                  //                   child: Text(
                  //                     QuestionnairesI18n.requiredQuestion,
                  //                   ),
                  //                 ),
                  //               Padding(
                  //                 padding:
                  //                     const EdgeInsets.only(bottom: Insets.l),
                  //                 child: Text(
                  //                   currentQuestion.title,
                  //                   style: context.text.title.large.copyWith(
                  //                     color: context.color.surface.onSurface,
                  //                   ),
                  //                 ),
                  //               ),
                  //               UiQuestionnaireProgressIndicator(
                  //                 length: pages.length,
                  //                 current: currentPage,
                  //                 formControlNames: pages.values
                  //                     .map((e) => e.first.questionCode)
                  //                     .toList(),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     DecoratedSliver(
                  //       decoration: BoxDecoration(
                  //         color: context.color.background.background,
                  //       ),
                  //       sliver: SliverPadding(
                  //         padding: const EdgeInsets.all(Insets.l),
                  //         sliver: SliverList(
                  //           delegate: SliverChildListDelegate(
                  //             // List.generate(
                  //             //   20,
                  //             //   (index) => SizedBox(
                  //             //     height: 50,
                  //             //     child: Text('$index'),
                  //             //   ),
                  //             // ),
                  //             currentQuestions
                  //                 .map(
                  //                   (e) => QuestionFieldWidget(question: e),
                  //                 )
                  //                 .toList(),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // bottomNavigationBar: QNavigation(
                  //   canPressedPrev: canPressedPrev,
                  //   canPressedNext: canPressedNext,
                  //   onPressedPrev: onPressedPrev,
                  //   onPressedNext: onPressedNext,
                  //   onSubmit: _onSubmit,
                  //   currentPage: currentPage,
                  //   pagesLength: pages.length,
                  //   isLoading: isLoading,
                  // ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  void onPressedPrev() {
    if (currentPage > 0) {
      setState(() {
        currentPage -= 1;
      });
    }
  }

  void onPressedNext() {
    final controls = formGroup.controls.entries
        .where((e) => e.value.value != null)
        .map((e) => e.value);

    for (final control in controls) {
      control.markAsTouched();
    }

    sendAnswer();
    if (currentPage < pages.length) {
      setState(() {
        currentPage += 1;
      });
    }
  }

  double calculateScrollEffect(double scroll) {
    const double maxScroll = 50;

    if (scroll <= 0) {
      return 0;
    } else if (scroll <= maxScroll) {
      return scroll / maxScroll;
    } else {
      return 1;
    }
  }
}
