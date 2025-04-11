import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QuestionnairePage extends StatelessWidget {
  const QuestionnairePage({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: createQuestionnaireBloc),
        BlocProvider(create: createQuestionnaireGeneratorBloc),
      ],
      child: BlocConsumer<QuestionnaireBloc, QuestionnaireState>(
        listenWhen: listenWhen,
        listener: listener,
        builder: (context, questionnaireState) {
          return BlocBuilder<QuestionnaireGeneratorBloc,
              QuestionnaireGeneratorState>(
            builder: (context, state) {
              return questionnaireState.maybeWhen(
                orElse: () => Scaffold(
                  appBar: UiAppBar(
                    automaticallyImplyLeading: false,
                    leading: UiIconButton(
                      icon: UiIcons.close,
                      onPressed: context.pop,
                    ),
                  ),
                  body: const Center(child: UiLoader()),
                ),
                failure: (error) => Scaffold(
                  appBar: UiAppBar(
                    automaticallyImplyLeading: false,
                    leading: UiIconButton(
                      icon: UiIcons.close,
                      onPressed: context.pop,
                    ),
                  ),
                  body: Center(child: Text(error.message)),
                ),
                success: (questionnaire, onPopInvoked, cacheData, allAnswers) {
                  if (state.pages.isEmpty) {
                    return Scaffold(
                      appBar: UiAppBar(
                        automaticallyImplyLeading: false,
                        leading: UiIconButton(
                          icon: UiIcons.close,
                          onPressed: context.pop,
                        ),
                      ),
                      body: const Center(child: Text('No questions')),
                    );
                  }

                  return QuestionnaireBlock(
                    form: state.form,
                    pages: state.pages,
                    title: state.questionnaire?.title ?? '',
                    onSubmit: (updateAnswerRequestDTO) async {
                      await context.read<QuestionnaireBloc>().updateAnswers(
                            id: id,
                            data: updateAnswerRequestDTO,
                          );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  QuestionnaireBloc createQuestionnaireBloc(BuildContext context) {
    return QuestionnairesInjection.sl<QuestionnaireBloc>()
      ..add(QuestionnaireEvent.started(id: id));
  }

  QuestionnaireGeneratorBloc createQuestionnaireGeneratorBloc(
    BuildContext context,
  ) {
    return QuestionnairesInjection.sl<QuestionnaireGeneratorBloc>();
  }

  bool listenWhen(
    QuestionnaireState prevState,
    QuestionnaireState currentState,
  ) {
    return prevState.maybeWhen(
          orElse: () => false,
          loading: () => true,
        ) &&
        currentState.maybeWhen(
          orElse: () => false,
          success: (_, __, ___, ____) => true,
        );
  }

  void listener(BuildContext context, QuestionnaireState state) {
    state.maybeWhen(
      orElse: () => null,
      success: (questionnaire, _, cacheData, allAnswers) {
        context.read<QuestionnaireGeneratorBloc>().add(
              QuestionnaireGeneratorEvent.started(
                questionnaire: questionnaire,
                questions: questionnaire.questions,
                cacheData: cacheData,
                allAnswers: allAnswers,
                currentSize:
                    PageSize.getFromWidth(context.mediaQuerySize.width),
                onUpdateForm: (data) {
                  context
                      .read<QuestionnaireBloc>()
                      .add(QuestionnaireEvent.formUpdated(data));
                },
              ),
            );
      },
    );
  }
}
